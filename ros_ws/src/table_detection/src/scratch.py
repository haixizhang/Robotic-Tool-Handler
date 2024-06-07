#!/usr/bin/env python3
import rospy
import open3d as o3d
from sensor_msgs.msg import Image, PointCloud2, PointField
import sensor_msgs.point_cloud2 as pc2
from std_msgs.msg import Header
import numpy as np
import struct
from sklearn.cluster import DBSCAN
import random
from cv_bridge import CvBridge, CvBridgeError
import cv2
from detection_msgs.msg import BoundingBoxes
from voice_recognition_pkg.msg import VerbNounPair
from sklearn.decomposition import PCA
class TableObjectDetection:
    def __init__(self):
        self.bridge = CvBridge()
        self.clusters = None
        self.target_cluster= None
        self.image_pub = rospy.Publisher("/camera/processed/image", Image, queue_size=10)
        self.plane_pub = rospy.Publisher("/table_plane", PointCloud2, queue_size=10)
        self.object_pub = rospy.Publisher("/table_objects", PointCloud2, queue_size=10)
        self.target_pub = rospy.Publisher("/target_pub", PointCloud2, queue_size=10)
        self.cluster_pub = rospy.Publisher("/cluster_pub", PointCloud2, queue_size=10)  

        self.plane_color = np.array([255, 0, 0])  # Grey color for the table
        self.object_color = np.array([0, 0, 255])  # Blue color for objects      
        self.apple_color = np.array([0, 255, 0])  # Blue color for objects     
        self.mouse_color = np.array([255, 255, 0]) 

        rospy.Subscriber("/camera/color/image_raw", Image, self.image_callback)
        rospy.Subscriber("/camera/depth/color/points", PointCloud2, self.point_cloud_callback)
        # subscriber for voice
        rospy.Subscriber("/verb_noun", VerbNounPair, self.voice_callback)
        rospy.Subscriber("/yolov5/detections",BoundingBoxes, self.detections_callback)
        self.depth_image = None

        rospy.loginfo("Table detection node started, subscribing to point cloud topic.")
        self.fx, self.fy, self.cx, self.cy = 420.551, 420.551, 416.280, 245.00
        # Placeholder for the image and objects' coordinates
        self.current_image = None
        self.object_coordinates = []
        self.target_name = None
        self.target_verb = None

        # Add a flag to indicate when a new voice command has been received
        self.new_voice_command_received=False
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
    
    def image_callback(self, msg):
        # Convert the ROS Image message to a CV2 image
        try:
            cv_image = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        except CvBridgeError as e:
            print(e)
        
        self.current_image = cv_image
        self.process_and_publish_image()



    def point_cloud2_to_array(self, msg):
        points_list = []
        for data in pc2.read_points(msg, field_names=("x", "y", "z", "rgb"), skip_nans=True):
            rgb_int = struct.unpack('I', struct.pack('f', data[3]))[0]
            r = (rgb_int >> 16) & 0x0000ff
            g = (rgb_int >> 8) & 0x0000ff
            b = (rgb_int) & 0x0000ff
            points_list.append([data[0], data[1], data[2], r, g, b])
        return np.array(points_list)

    def array_to_point_cloud2(self, point_type, points, frame_id="camera_link"):
        header = Header(frame_id=frame_id)
        fields = [PointField('x', 0, PointField.FLOAT32, 1),
                  PointField('y', 4, PointField.FLOAT32, 1),
                  PointField('z', 8, PointField.FLOAT32, 1),
                  PointField('rgb', 12, PointField.FLOAT32, 1)]
        if point_type == "PLANE":
            packed_rgb = (self.plane_color[0] << 16) | (self.plane_color[1] << 8) | self.plane_color[2]
        elif point_type == "OBJECTS":
            packed_rgb = (self.object_color[0] << 16) | (self.object_color[1] << 8) | self.object_color[2]
        elif point_type == "APPLE":
            packed_rgb = (self.apple_color[0] << 16) | (self.apple_color[1] << 8) | self.apple_color[2]
        elif point_type == "MOUSE":
            packed_rgb = (self.mouse_color[0] << 16) | (self.mouse_color[1] << 8) | self.mouse_color[2]
        else:
            rospy.logerr("Unknown type specified in array_to_point_cloud2 function.")
            return None
        packed_rgb_float = struct.unpack('f', struct.pack('I', packed_rgb))[0]
        packed_rgb_float_array = np.repeat(packed_rgb_float, points.shape[0]).astype(np.float32)
        cloud_data = np.c_[points[:, :3], packed_rgb_float_array]
        return pc2.create_cloud(header, fields, cloud_data)

    def clusters_to_point_cloud2(self, clusters, frame_id="camera_link"):
        header = Header(frame_id=frame_id)
        fields = [PointField('x', 0, PointField.FLOAT32, 1),
                  PointField('y', 4, PointField.FLOAT32, 1),
                  PointField('z', 8, PointField.FLOAT32, 1),
                  PointField('rgb', 12, PointField.FLOAT32, 1)]
        cloud_data = []
        for cluster in clusters:
            if cluster.size == 0:
                continue
            # Generate a unique color for each cluster
            color = [random.randint(0, 255) for _ in range(3)]
            packed_rgb = (color[0] << 16) | (color[1] << 8) | color[2]
            packed_rgb_float = struct.unpack('f', struct.pack('I', packed_rgb))[0]

            # Assign this color to all points in the cluster
            packed_rgb_float_array = np.repeat(packed_rgb_float, cluster.shape[0])
            cluster_data = np.c_[cluster[:, :3], packed_rgb_float_array]  # Assuming cluster only has XYZ coordinates
            cloud_data.append(cluster_data)
        if len(cloud_data) == 0:
            rospy.logerr("No clusters found to convert to PointCloud2.")
            return None
        # Combine all clusters into one array
        all_clusters_data = np.vstack(cloud_data)
        return pc2.create_cloud(header, fields, all_clusters_data)
    
    def plane_segmentation(self, points):
        pcd = o3d.geometry.PointCloud()
        pcd.points = o3d.utility.Vector3dVector(points[:, :3])
        plane_model, inliers = pcd.segment_plane(distance_threshold=0.01, ransac_n=3, num_iterations=1000)
        [a, b, c, d] = plane_model
        print(f"Plane equation: {a}x + {b}y + {c}z + {d} = 0")
        inlier_points = points[inliers]
        outlier_points = np.delete(points, inliers, axis=0)
        return inlier_points, outlier_points
    
    def numpy_to_o3d_pcd(self, numpy_points):
        pcd = o3d.geometry.PointCloud()
        pcd.points = o3d.utility.Vector3dVector(numpy_points)
        return pcd

    def cluster_points_dbscan(self, points, eps=0.01, min_samples=60):
        xyz_points = points[:, :3]
        clustering = DBSCAN(eps=eps, min_samples=min_samples).fit(xyz_points)
        labels = clustering.labels_
        unique_labels = set(labels)
        clusters = [points[labels == k] for k in set(labels) if k != -1]
        print(f"Number of clusters: {len(unique_labels)}")
        return clusters
    

    
    def detections_callback(self, msg):
        # If no new voice command has been received, skip this detection
        if not self.new_voice_command_received:
            return
        print("Searching for objects ...")
        for bbox in msg.bounding_boxes:
            if bbox.Class in ["apple", "mouse", "bottle"]:
                if bbox.Class == self.target_name:
                    if bbox.probability >= 0.85:
                        # Calculate center point of the bounding box in image coordinates
                        xc = (bbox.xmin + bbox.xmax) / 2
                        yc = (bbox.ymin + bbox.ymax) / 2
                        print(f"{bbox.Class.capitalize()} detected at ({xc}, {yc})")
                        depth = self.depth_image[int(yc), int(xc)] / 100
                        center_3d = self.project_to_3d(xc, yc, depth)/10
                        print(f"Center of the bounding box: {xc}, {yc}, {depth}")
                        print(f"Center of the bounding box in 3d: {center_3d}")
                        target_cluster = self.find_cluster_containing_point(center_3d, self.clusters)
                        # Store the result into a txt file, after storing, end the program
                        with open(f"{bbox.Class}.txt", "w") as f:
                            f.write(str(target_cluster))
                            f.close()
                        if target_cluster is not None:
                            object_msg = self.array_to_point_cloud2(bbox.Class.upper(), target_cluster)
                            self.target_pub.publish(object_msg)
                else:
                    print("Cannot find matched object with voice command, try again...")

    def depth_image_callback(self, data):
        try:
            # Assuming the depth image encoding is 16-bit unsigned integers
            self.depth_image = self.bridge.imgmsg_to_cv2(data, desired_encoding="passthrough")
        except CvBridgeError as e:
            print(e)

    def point_cloud_callback(self, msg):
        rospy.loginfo("Point cloud received.")
        points = self.point_cloud2_to_array(msg)
        # Perform plane segmentation and clustering
        plane_points, object_points = self.plane_segmentation(points)
        # Applying PCA to object points for dimensionality reduction or noise reduction
        pca = PCA(n_components=3)  # Adjust n_components based on your needs
        object_points_reduced = pca.fit_transform(object_points[:, :3])  # Apply PCA only on XYZ, ignore colors
        object_points_pca = np.hstack((object_points_reduced, object_points[:, 3:]))  # Reattach colors
    
        self.clusters = self.cluster_points_dbscan(object_points_pca)
        # Publish the processed point clouds
        plane_cloud_ros = self.array_to_point_cloud2("PLANE", plane_points, msg.header.frame_id)
        object_cloud_ros = self.array_to_point_cloud2("OBJECTS", object_points_pca, msg.header.frame_id)
        cluster_cloud_ros = self.clusters_to_point_cloud2(self.clusters, msg.header.frame_id)
        self.plane_pub.publish(plane_cloud_ros)
        self.object_pub.publish(object_cloud_ros)
        self.cluster_pub.publish(cluster_cloud_ros)
        self.object_coordinates = self.project_points_to_image(object_points)
        self.process_and_publish_image()

    def project_points_to_image(self, object_points):
        object_coordinates = []
        for point in object_points:
            x, y, z = point[:3] 
            if z != 0:  # Simple projection formula (for demonstration)
                x_pixel = int((x * self.fx) / z + self.cx)
                y_pixel = int((y * self.fy) / z + self.cy)
                object_coordinates.append((x_pixel, y_pixel))
        return object_coordinates
    
    def project_to_3d(self, x, y, depth):
        x_3d = (x - self.cx) * depth / self.fx
        y_3d = (y - self.cy) * depth / self.fy
        return np.array([x_3d, y_3d, depth])


    def process_and_publish_image(self):
        if self.current_image is not None and len(self.object_coordinates) > 0:
            mask = np.zeros_like(self.current_image)
            for (x,y) in self.object_coordinates:
                cv2.circle(mask, (x, y), 5, (255, 255, 255), -1)
            # Apply mask to original image to get segmented image
            segmented_image = cv2.bitwise_and(self.current_image, mask)
            # Convert segmented image to ROS Image message
            segmented_image_message = self.bridge.cv2_to_imgmsg(segmented_image, "bgr8")
            # Publish the segmented image
            self.image_pub.publish(segmented_image_message)

    def find_cluster_containing_point(self, point_3d, clusters):
        min_distance = float('inf')
        target_cluster = None
        for cluster in clusters:
            spatial_cluster_centroid = cluster[:,:3] * 100
            centroid = np.mean(spatial_cluster_centroid, axis=0)
            # find the center of the cluster
            distance = np.linalg.norm(centroid - point_3d)
            if distance < min_distance:
                min_distance = distance
                target_cluster = cluster
        print(f"Closest distance: {min_distance}")
        print(f"Cluster centroid: {np.mean(target_cluster[:,:3], axis=0)}")
        return target_cluster

if __name__ == '__main__':
    rospy.init_node('table_detection_node', anonymous=True)
    table_detection = TableObjectDetection()
    try:
        table_detection.run()
    except rospy.ROSInterruptException:
        pass
