#!/usr/bin/env python3
import rospy
import open3d as o3d
from sensor_msgs.msg import PointCloud2, PointField
import sensor_msgs.point_cloud2 as pc2
from std_msgs.msg import Header
import numpy as np
import struct
from sklearn.cluster import DBSCAN
import random
import time

class TableObjectDetection:
    def __init__(self):
        self.plane_pub = rospy.Publisher("/table_plane", PointCloud2, queue_size=10)
        self.object_pub = rospy.Publisher("/table_objects", PointCloud2, queue_size=10)
        self.cluster_pub = rospy.Publisher("/cluster_pub", PointCloud2, queue_size=10)
        self.target_pub = rospy.Publisher("/target_pub", PointCloud2, queue_size=10)
        
        self.plane_color = np.array([255, 0, 0])  # Grey color for the table
        self.object_color = np.array([0, 0, 255])  # Blue color for objects
        self.cluster_color = np.array([0, 255, 0])  # Green color for clusters
        
        self.stl_file_path = "/home/enis/ros_ws/src/table_detection/src/042_large_markerA.stl"
        self.target_pc2 = None  # Will hold the target object as a PointCloud2
        self.target_pcd_3d = None  # Will hold the target object as an Open3D PointCloud
        rospy.Subscriber("/camera/depth/color/points", PointCloud2, self.point_cloud_callback)
        rospy.loginfo("Table detection node started, subscribing to point cloud topic.")
        
    def run(self):
        rospy.spin()

    def point_cloud2_to_o3d_pcd(self, point_cloud2_msg):
        points_list = list(pc2.read_points(point_cloud2_msg, field_names=("x", "y", "z"), skip_nans=True))
        pcd = o3d.geometry.PointCloud()
        pcd.points = o3d.utility.Vector3dVector(points_list)
        return pcd

    def point_cloud2_to_array(self, msg):
        """
        Convert a ROS PointCloud2 message to a NumPy array with XYZ coordinates and RGB colors.
        """
        points_list = []
        for data in pc2.read_points(msg, field_names=("x", "y", "z", "rgb"), skip_nans=True):
            rgb_int = struct.unpack('I', struct.pack('f', data[3]))[0]
            r = (rgb_int >> 16) & 0x0000ff
            g = (rgb_int >> 8) & 0x0000ff
            b = (rgb_int) & 0x0000ff
            points_list.append([data[0], data[1], data[2], r, g, b])
        return np.array(points_list)

    def array_to_point_cloud2(self, point_type, points, frame_id="camera_link"):
        """
        Convert a NumPy array with RGB color to a ROS PointCloud2 message.
        """
        header = Header(frame_id=frame_id)
        fields = [PointField('x', 0, PointField.FLOAT32, 1),
                  PointField('y', 4, PointField.FLOAT32, 1),
                  PointField('z', 8, PointField.FLOAT32, 1),
                  PointField('rgb', 12, PointField.FLOAT32, 1)]
        if point_type == "PLANE":
            packed_rgb = (self.plane_color[0] << 16) | (self.plane_color[1] << 8) | self.plane_color[2]
        elif point_type == "OBJECTS":
            packed_rgb = (self.object_color[0] << 16) | (self.object_color[1] << 8) | self.object_color[2]
        else:
            rospy.logerr("Unknown type specified in array_to_point_cloud2 function.")
            return None
        packed_rgb_float = struct.unpack('f', struct.pack('I', packed_rgb))[0]
        packed_rgb_float_array = np.repeat(packed_rgb_float, points.shape[0]).astype(np.float32)
        cloud_data = np.c_[points[:, :3], packed_rgb_float_array]
        return pc2.create_cloud(header, fields, cloud_data)

    def clusters_to_point_cloud2(self, clusters, frame_id="camera_link"):
        """
        Convert a list of clusters (each a NumPy array) to a ROS PointCloud2 message,
        with each cluster assigned a unique color.
        """
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

    def stl_to_point_cloud2(self, stl_file_path, number_of_points=1000, frame_id="map", default_color=[0, 255, 0], scale_factor=0.1):
        """
        Convert an STL file to a ROS PointCloud2 message.
        :param stl_file_path: Path to the STL file.
        :param number_of_points: Number of points to sample from the STL mesh.
        :param frame_id: Frame ID for the PointCloud2 header.
        :param default_color: Default RGB color for all points in the cloud.
        :param scale_factor: Scale factor to apply to the mesh.
        :return: A PointCloud2 message representing the STL mesh.
        """
        mesh = o3d.io.read_triangle_mesh(stl_file_path)
        mesh.compute_vertex_normals()
        mesh.scale(scale_factor, center=mesh.get_center())
        pcd = mesh.sample_points_poisson_disk(number_of_points)
        points = np.asarray(pcd.points)
        colors = np.tile(default_color, (points.shape[0], 1))
        header = Header(frame_id=frame_id)
        fields = [PointField('x', 0, PointField.FLOAT32, 1),
                  PointField('y', 4, PointField.FLOAT32, 1),
                  PointField('z', 8, PointField.FLOAT32, 1),
                  PointField('rgb', 12, PointField.FLOAT32, 1)]
        cloud_data = np.zeros((points.shape[0],), dtype=[
            ('x', np.float32), ('y', np.float32), ('z', np.float32),
            ('rgb', np.float32)])
        cloud_data['x'] = points[:, 0]
        cloud_data['y'] = points[:, 1]
        cloud_data['z'] = points[:, 2]
        for i in range(points.shape[0]):
            cloud_data['rgb'][i] = struct.unpack('f', struct.pack('I', (int(colors[i, 0]) << 16) | (int(colors[i, 1]) << 8) | int(colors[i, 2])))[0]
        return pc2.create_cloud(header, fields, cloud_data)

    def downsample_point_cloud(self, points, voxel_size=0.01):
        pcd = o3d.geometry.PointCloud()
        pcd.points = o3d.utility.Vector3dVector(points[:, :3])
        if points.shape[1] > 3:
            colors = points[:, 3:6] / 255.0
            pcd.colors = o3d.utility.Vector3dVector(colors)
        down_pcd = pcd.voxel_down_sample(voxel_size=voxel_size)
        downsampled_points = np.asarray(down_pcd.points)
        if points.shape[1] > 3:
            downsampled_colors = np.asarray(down_pcd.colors) * 255.0
            downsampled_points = np.hstack((downsampled_points, downsampled_colors))
        return downsampled_points
    
    def plane_segmentation(self, points):
        pcd = o3d.geometry.PointCloud()
        pcd.points = o3d.utility.Vector3dVector(points[:, :3])
        plane_model, inliers = pcd.segment_plane(distance_threshold=0.01, ransac_n=3, num_iterations=1000)
        [a, b, c, d] = plane_model
        print(f"Plane equation: {a}x + {b}y + {c}z + {d} = 0")
        inlier_points = points[inliers]
        outlier_points = np.delete(points, inliers, axis=0)
        return inlier_points, outlier_points

    def cluster_points(self, points, eps=0.01, min_samples=50):
        xyz_points = points[:, :3]
        clustering = DBSCAN(eps=eps, min_samples=min_samples).fit(xyz_points)
        labels = clustering.labels_
        unique_labels = set(labels)
        clusters = [points[labels == k] for k in set(labels) if k != -1]
        print(f"Number of clusters: {len(unique_labels)}")
        return clusters
    
    def numpy_to_o3d_pcd(self, numpy_points):
        """
        Convert a NumPy array of points to an Open3D PointCloud.
        :param numpy_points: NumPy array of shape (N, 3) where N is the number of points.
        :return: An Open3D point cloud object.
        """
        pcd = o3d.geometry.PointCloud()
        pcd.points = o3d.utility.Vector3dVector(numpy_points)
        return pcd

    def match_target_to_cluster(self,clusters):
        target_pcd  =  self.point_cloud2_to_o3d_pcd(self.target_pc2)
        # Variables to keep track of the best match
        best_match = None
        highest_fitness_score = -1

        # Iterate over clusters to find the best match
        for cluster_pcd in clusters:
            # Perform ICP
            icp_result = o3d.pipelines.registration.registration_icp(
                target_pcd, cluster_pcd, max_correspondence_distance=0.5,
                init=np.eye(4),
                estimation_method=o3d.pipelines.registration.TransformationEstimationPointToPoint())

            # Check if this match has a higher fitness score
            if icp_result.fitness > highest_fitness_score:
                highest_fitness_score = icp_result.fitness
                best_match = cluster_pcd
                print(f"New best match found: {icp_result.fitness}")
        # Return the best match and its fitness score
        return best_match, highest_fitness_score     
    
           
    def point_cloud_callback(self, msg):
        rospy.loginfo("Point cloud received.")
        points = self.point_cloud2_to_array(msg)
        # Perform plane segmentation and clustering
        plane_points, object_points = self.plane_segmentation(points)
        clusters = self.cluster_points(object_points)
        # Publish the processed point clouds
        plane_cloud_ros = self.array_to_point_cloud2("PLANE", plane_points, msg.header.frame_id)
        object_cloud_ros = self.array_to_point_cloud2("OBJECTS", object_points, msg.header.frame_id)
        cluster_cloud_ros = self.clusters_to_point_cloud2(clusters, msg.header.frame_id)
        self.plane_pub.publish(plane_cloud_ros)
        self.object_pub.publish(object_cloud_ros)
        self.cluster_pub.publish(cluster_cloud_ros)
        # Convert clusters from NumPy arrays to Open3D point clouds
        clusters_o3d = [self.numpy_to_o3d_pcd(cluster[:, :3]) for cluster in clusters if cluster.size > 0]
        self.target_pc2 = self.stl_to_point_cloud2(self.stl_file_path,frame_id=msg.header.frame_id)
        self.target_pub.publish(self.target_pc2)
        best_match, fitness_score = self.match_target_to_cluster(clusters_o3d)

if __name__ == '__main__':
    rospy.init_node('table_detection_node', anonymous=True)
    table_detection = TableObjectDetection()
    try:
        table_detection.run()
    except rospy.ROSInterruptException:
        pass
