#!/usr/bin/env python3
import rospy
import open3d as o3d
from sensor_msgs.msg import Image, PointCloud2, PointField
import sensor_msgs.point_cloud2 as pc2
from geometry_msgs.msg import Point
from std_msgs.msg import Header
import numpy as np
from sklearn.cluster import DBSCAN
from cv_bridge import CvBridge, CvBridgeError
from detection_msgs.msg import BoundingBoxes
from voice_recognition_pkg.msg import VerbNounPair
import struct
import open3d as o3d
import os
import time
from sklearn.linear_model import RANSACRegressor
from std_msgs.msg import Float32

class ObjectPointCloudPublisher:
    def __init__(self):
        self.bridge = CvBridge()

        # Publishers
        self.object_pub = rospy.Publisher("/detected_objects_point_clouds", PointCloud2, queue_size=10)
        self.target_pub = rospy.Publisher("/detected_target_point_clouds", PointCloud2, queue_size=10)
        self.center_pub = rospy.Publisher("/detected_target_center", Point, queue_size=10)
        self.height_pub = rospy.Publisher("/detected_target_height", Float32, queue_size=10)
        self.table_pub = rospy.Publisher("/detected_table_point_clouds", PointCloud2, queue_size=10)
        # Subscribers
        rospy.Subscriber("/camera/color/image_raw", Image, self.color_image_callback)
        rospy.Subscriber("/camera/depth//image_rect_raw", Image, self.depth_image_callback)
        rospy.Subscriber("/yolov5/detections",BoundingBoxes, self.detections_callback)
        rospy.Subscriber("/verb_noun", VerbNounPair, self.voice_callback)

        self.color_image = None
        self.depth_image = None
        self.object_color = np.array([0, 255, 0])  # Green color for objects 
        self.target_color = np.array([255, 0, 0])  # Red color for target
        self.table_color = np.array([0, 0, 255])  # Blue color
        self.fx = 420.551  # Example focal length, adjust to your camera
        self.fy = 420.551
        self.cx = 416.280
        self.cy = 245.000
        self.new_voice_command_received = False
        # Confidence thresholds for different objects
        self.confidence_thresholds = {
            "apple": 0.85,
            "banana": 0.88,    
            "mouse": 0.8,
            "bottle": 0.82,
            "cell phone": 0.82,
            "sports ball": 0.85,
        }
    def run(self):
        rospy.spin()


    def voice_callback(self, msg):
        # Original dictionary mapping strings to integers
        noun_dictionary = {
            # "wrench": 0,
            "banana": 1,
            # "chip": 2,
            # "brick": 3,
            # "hammer": 4,
            # "marker": 5,
            # "padlock": 6,
            # "meat": 7,
            # "screwdriver": 8,
            # "spatula": 9,
            "sports ball": 10,
            # "block": 11,
            "apple": 12,
            "bottle": 13,
            "cell phone": 14,
            "scissor": 17,
            "mouse": 15,
        }

        # Reverse the dictionary to map integers to strings
        reverse_noun_dictionary = {value: key for key, value in noun_dictionary.items()}

        # Convert msg.name from int to string using the reversed dictionary
        if msg.noun in reverse_noun_dictionary:
            self.target_name = reverse_noun_dictionary[msg.noun]
        else:
            self.target_name = "Unknown"  # Or any default value you prefer

        self.target_verb = msg.verb
        self.new_voice_command_received = True

    def color_image_callback(self, msg):
        try:
            self.color_image = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        except CvBridgeError as e:
            rospy.logerr(e)

    def depth_image_callback(self, msg):
        try:
            self.depth_image = self.bridge.imgmsg_to_cv2(msg, desired_encoding="passthrough")
        except CvBridgeError as e:
            rospy.logerr(e)
                    
    def detections_callback(self, msg):
        if not self.new_voice_command_received or self.depth_image is None:
            rospy.logwarn("Skipping detections due to lack of new voice command or depth image.")
            return
        rospy.loginfo("Processing object detections...")
        for bbox in msg.bounding_boxes:
            if bbox.Class in self.confidence_thresholds:
                print("here")
                if bbox.Class == self.target_name:
                    threshold = self.confidence_thresholds.get(bbox.Class, 0.8)
                if bbox.probability >= threshold:
                    # Adjust the bounding box to be slightly larger
                        margin = 10  # pixels
                        xmin = max(0, bbox.xmin - margin)
                        xmax = min(self.depth_image.shape[1], bbox.xmax + margin)
                        ymin = max(0, bbox.ymin - margin)
                        ymax = min(self.depth_image.shape[0], bbox.ymax + margin)
                        xc = (xmin + xmax) / 2
                        yc = (ymin + ymax) / 2
                        print(f"{bbox.Class.capitalize()} detected at ({xc}, {yc})")
                        depth = self.depth_image[int(yc), int(xc)] / 100
                        center_3d = self.project_to_3d(xc, yc, depth)/10
                        print(f"Center of the bounding box in 3d: {center_3d}")
                        # Extract the depth segment based on bounding box
                        depth_segment = self.depth_image[ymin:ymax, xmin:xmax] / 100
                        object_points = self.depth_to_point_cloud(depth_segment, xmin, ymin)
                        object_points *= 100
                        centroid = np.mean(object_points, axis=0) 
                        print(f"Centroid of the bounding box: {centroid}")
                        if object_points.size > 0:
                            # Apply table object segmentation
                            #segmented_points = self.segment_object_from_table(object_points)
                            table, segmented_points, plane_height = self.segment_object_from_table_ransac(object_points)
                            #table,segmented_points, plane_height = self.plane_segmentation(object_points)
                            segmented_points = self.segment_object_from_table(object_points,plane_height)
                            # Segment table and objects
                            print(f"Plane height: {plane_height} meters")
                            centroid = np.mean(segmented_points, axis=0)
                            print(f"Centroid of the bounding box after segmentation: {centroid}")
                            centerpoint_msg = Point()
                            centerpoint_msg.x = centroid[0]
                            centerpoint_msg.y = centroid[1]
                            centerpoint_msg.z = centroid[2]
                            self.center_pub.publish(centerpoint_msg)
                            height_msg = Float32()
                            height_msg.data = plane_height
                            self.height_pub.publish(height_msg)                            
                            if segmented_points is not None:
                                # without segmentation
                                target_cloud_ros = self.numpy_to_ros_point_cloud(object_points,frame_id="camera_link",point_type="TARGET")
                                # segmentated
                                object_cloud_ros = self.numpy_to_ros_point_cloud(segmented_points, frame_id="camera_link",point_type="OBJECT")
                                # table
                                table_cloud_ros = self.numpy_to_ros_point_cloud(table, frame_id="camera_link",point_type="TABLE")
                                self.table_pub.publish(table_cloud_ros)
                                self.object_pub.publish(object_cloud_ros)
                                self.target_pub.publish(target_cloud_ros)
                                object_cloud_ros = self.point_cloud2_to_array(object_cloud_ros)
                                # convert to numpy and save to txt
                                file_path = os.path.join('/home/enis/ros_ws', f"{bbox.Class}_points.txt")
                                np.savetxt(file_path, object_cloud_ros, fmt='%f', delimiter=",")
                                rospy.loginfo(f"Saved {bbox.Class.capitalize()} point cloud to {file_path}")
                            rospy.sleep(3)

                                
    def segment_object_from_table(self, object_points,height_threshold=0.34):
        # 34cm above the table, adjust based on setup
        segmented_points = object_points[object_points[:, 2] < height_threshold]
        if segmented_points.size > 0:
            return segmented_points
        else:
            return None
        
    def segment_object_from_table_ransac(self, object_points):
        if object_points.size == 0:
            return None, None, None

        # Assuming object_points is an Nx3 array
        X = object_points[:, :2]  # Use X, Y coordinates
        y = object_points[:, 2]   # Use Z coordinate as the target

        # Fit RANSAC regressor
        ransac = RANSACRegressor(max_trials=1000)
        ransac.fit(X, y)
        inlier_mask = ransac.inlier_mask_
        outlier_mask = np.logical_not(inlier_mask)
        # Segmented object points (outliers are theobject_points.shape).shape)fitting the plane)
        object_outliers = object_points[outlier_mask]
        # Object points (inliers are the points fitting the plane)
        object_inliers = object_points[inlier_mask]
        # Plane height can be estimated as the average Z of inliers
        plane_height = np.mean(y[inlier_mask])
        return object_inliers, object_outliers, plane_height

    def plane_segmentation(self,points):
        """
        Segment the dominant plane from the point cloud using RANSAC.
        """
        pcd = o3d.geometry.PointCloud()
        # Ensure only XYZ coordinates are passed to Open3D, excluding RGB data
        xyz_points = points[:, :3]  # Assuming the first 3 columns are x, y, z
        pcd.points = o3d.utility.Vector3dVector(xyz_points)
        # RANSAC plane segmentation
        plane_model, inliers = pcd.segment_plane(ransac_n=50,num_iterations=1000, distance_threshold=0.01)
        [a, b, c, d] = plane_model
        # print(f"Plane equation: {a}x + {b}y + {c}z + {d} = 0")
        # # Extract the point cloud corresponding to the table (inliers)
        # table_cloud = pcd.select_by_index(inliers)
        # # Extract the point cloud corresponding to the objects (outliers)
        # object_cloud = pcd.select_by_index(inliers, invert=True)
        # # Get the height of the table (the average z-coordinate of the inliers)
        # table_height = np.mean(np.asarray(table_cloud.points)[:, 2])
        print(f"Plane equation: {a}x + {b}y + {c}z + {d} = 0")
        # Extract inliers and outliers based on XYZ coordinates
        inlier_cloud = pcd.select_by_index(inliers)
        outlier_cloud = pcd.select_by_index(inliers, invert=True)    
        inlier_points = np.asarray(inlier_cloud.points)
        outlier_points = np.asarray(outlier_cloud.points)    
        table_height = np.mean(np.asarray(inlier_points)[:,2])
        return inlier_points, outlier_points, table_height

    def point_cloud2_to_array(self, msg):
        points_list = []
        for data in pc2.read_points(msg, field_names=("x", "y", "z"), skip_nans=True):
            points_list.append([data[0], data[1], data[2]])
        return np.array(points_list)

    def depth_to_point_cloud(self, depth_segment, offset_x, offset_y):
        rows, cols = depth_segment.shape
        points = []
        for v in range(rows):
            for u in range(cols):
                Z = depth_segment[v, u] / 100  # Convert mm to meters if necessary
                if Z == 0: continue  # Skip invalid points
                X = (u + offset_x - self.cx) * Z / self.fx 
                Y = (v + offset_y - self.cy) * Z / self.fy
                X = X/10
                Y = Y/10
                Z = Z/10
                points.append([X, Y, Z])
        return np.array(points)

    def project_to_3d(self, x, y, depth):
        x_3d = (x - self.cx) * depth / self.fx
        y_3d = (y - self.cy) * depth / self.fy
        return np.array([x_3d, y_3d, depth])

    def numpy_to_ros_point_cloud(self, points, frame_id="camera_depth_optical_frame",point_type = "TARGET"):
        header = Header(frame_id=frame_id)
        fields = [PointField('x', 0, PointField.FLOAT32, 1),
                  PointField('y', 4, PointField.FLOAT32, 1),
                  PointField('z', 8, PointField.FLOAT32, 1),
                  PointField('rgb', 12, PointField.FLOAT32, 1)] # Note the use of UINT32 for RGB]
        if point_type == "TARGET":
            packed_rgb = (self.target_color[0] << 16) | (self.target_color[1] << 8) | self.target_color[2]
        elif point_type == "OBJECT":
            packed_rgb = (self.object_color[0] << 16) | (self.object_color[1] << 8) | self.object_color[2]
        elif point_type == "TABLE":
            packed_rgb = (self.table_color[0] << 16) | (self.table_color[1] << 8) | self.table_color[2]
        packed_rgb_float = struct.unpack('f', struct.pack('I', packed_rgb))[0]
        packed_rgb_float_array = np.repeat(packed_rgb_float, points.shape[0]).astype(np.float32)
        cloud_data = np.c_[points[:, :3], packed_rgb_float_array]
        return pc2.create_cloud(header, fields, cloud_data)

if __name__ == '__main__':
    rospy.init_node('table_detection_node', anonymous=True)
    object_pc_publisher = ObjectPointCloudPublisher()
    rospy.Rate(0.1)  # 10hz
    try:
        object_pc_publisher.run()
    except rospy.ROSInterruptException:
        pass