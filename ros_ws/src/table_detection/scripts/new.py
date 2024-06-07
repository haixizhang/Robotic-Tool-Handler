#!/usr/bin/env python3
import rospy
import open3d as o3d
from sensor_msgs.msg import Image, PointCloud2, PointField
import sensor_msgs.point_cloud2 as pc2
from std_msgs.msg import Header
import numpy as np
from sklearn.cluster import DBSCAN
from cv_bridge import CvBridge, CvBridgeError
from detection_msgs.msg import BoundingBoxes
from voice_recognition_pkg.msg import VerbNounPair
import struct
import open3d as o3d

class ObjectPointCloudPublisher:
    def __init__(self):
        self.bridge = CvBridge()

        # Publishers
        self.object_pub = rospy.Publisher("/detected_objects_point_clouds", PointCloud2, queue_size=10)
        self.target_pub = rospy.Publisher("/detected_target_point_clouds", PointCloud2, queue_size=10)
        # Subscribers
        rospy.Subscriber("/camera/color/image_raw", Image, self.color_image_callback)
        rospy.Subscriber("/camera/depth/image_rect_raw", Image, self.depth_image_callback)
        rospy.Subscriber("/yolov5/detections",BoundingBoxes, self.detections_callback)
        rospy.Subscriber("/verb_noun", VerbNounPair, self.voice_callback)

        self.color_image = None
        self.depth_image = None
        self.object_color = np.array([0, 255, 0])  # Blue color for objects      
        self.fx = 420.551  # Example focal length, adjust to your camera
        self.fy = 420.551
        self.cx = 416.280
        self.cy = 245.000

    def run(self):
        rospy.spin()


    def voice_callback(self, msg):
        # Original dictionary mapping strings to integers
        noun_dictionary = {
            "wrench": 0,
            "banana": 1,
            "chip": 2,
            "brick": 3,
            "hammer": 4,
            "marker": 5,
            "padlock": 6,
            "meat": 7,
            "screwdriver": 8,
            "spatula": 9,
            "tennis": 10,
            "block": 11,
            "apple": 12,
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

    # def detections_callback(self, msg):
    #     if not self.new_voice_command_received or self.depth_image is None:
    #         rospy.logwarn("Skipping detections due to lack of new voice command or depth image.")
    #         return
    #     rospy.loginfo("Processing object detections...")
    #     for bbox in msg.bounding_boxes:
    #         if bbox.Class in ["apple", "mouse", "bottle"]:
    #             if bbox.Class == self.target_name:
    #                 if bbox.probability >= 0.85:
    #                                 # Calculate center point of the bounding box in image coordinates
    #                     xc = (bbox.xmin + bbox.xmax) / 2
    #                     yc = (bbox.ymin + bbox.ymax) / 2
    #                     print(f"{bbox.Class.capitalize()} detected at ({xc}, {yc})")
    #                     depth = self.depth_image[int(yc), int(xc)] / 100
    #                     center_3d = self.project_to_3d(xc, yc, depth)/10
    #                     print(f"Center of the bounding box in 3d: {center_3d}")
    #                     # Extract the depth segment based on bounding box
    #                     depth_segment = self.depth_image[bbox.ymin:bbox.ymax, bbox.xmin:bbox.xmax]/100
    #                     object_points = self.depth_to_point_cloud(depth_segment, bbox.xmin, bbox.ymin)
    #                     centroid = np.mean(object_points, axis=0) * 100
    #                     print(f"Centroid of the bounding box: {centroid}")

    #                     if object_points.size > 0:
    #                         object_cloud_ros = self.numpy_to_ros_point_cloud(object_points*100, frame_id="camera_link")
    #                         self.object_pub.publish(object_cloud_ros)
    #                     with open(f"{bbox.Class}.txt", "w") as f:
    #                         f.write(str(object_cloud_ros))
    #                         f.close()
                    
    def detections_callback(self, msg):
        if not self.new_voice_command_received or self.depth_image is None:
            rospy.logwarn("Skipping detections due to lack of new voice command or depth image.")
            return
        rospy.loginfo("Processing object detections...")
        for bbox in msg.bounding_boxes:
            if bbox.Class in ["apple", "mouse", "bottle"]:
                if bbox.Class == self.target_name:
                    if bbox.probability >= 0.85:
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
                        centroid = np.mean(object_points, axis=0) * 100
                        print(f"Centroid of the bounding box: {centroid}")
                        if object_points.size > 0:
                            # Apply table object segmentation
                            segmented_points = self.segment_object_from_table(object_points)
                            centroid = np.mean(segmented_points, axis=0) * 100
                            print(f"Centroid of the bounding box after segmentation: {centroid}")
                            if segmented_points is not None:
                                object_cloud_ros = self.numpy_to_ros_point_cloud(segmented_points*100, frame_id="camera_link")
                                self.object_pub.publish(object_cloud_ros)
                        # save to txt
                        with open(f"{bbox.Class}.txt", "w") as f:
                            f.write(str(object_cloud_ros))
                            f.close()

    def segment_object_from_table(self, object_points):
        # Here you can apply a segmentation algorithm to remove table points
        # For this example, let's assume we are only keeping points above a certain height threshold
        # This is a very basic form of segmentation
        height_threshold = 0.45  # 2cm above the table, adjust based on your setup
        segmented_points = object_points[object_points[:, 2] < height_threshold]
        if segmented_points.size > 0:
            return segmented_points
        else:
            return None
        
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

    def numpy_to_ros_point_cloud(self, points, frame_id="camera_link"):
        header = Header(frame_id=frame_id)
        fields = [PointField('x', 0, PointField.FLOAT32, 1),
                  PointField('y', 4, PointField.FLOAT32, 1),
                  PointField('z', 8, PointField.FLOAT32, 1),
                  PointField('rgb', 12, PointField.FLOAT32, 1)] # Note the use of UINT32 for RGB]
        packed_rgb = (self.object_color[0] << 16) | (self.object_color[1] << 8) | self.object_color[2]
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
