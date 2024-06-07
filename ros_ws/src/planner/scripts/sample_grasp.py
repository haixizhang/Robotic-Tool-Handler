#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import PointCloud2
from geometry_msgs.msg import Transform
from geometry_msgs.msg import TransformStamped
from std_msgs.msg import Float32MultiArray
import tf2_ros
import numpy as np
import pyransac3d as pyrsc
from scipy.spatial.transform import Rotation as R
import open3d as o3d

transform = None

def transform_calculation(displacement, rotation, sec_disp = None, sec_rot = None):
    world_disp = np.array([1.8, 4.0, 4.05])
    world_rot = np.array([0.7072, 0.0, -0.7072, 0.0])
    new_disp =  np.dot(R.from_quat(rotation).as_matrix(), world_disp) + displacement
    new_rot_epi = rotation[3]*world_rot[:3] + world_rot[3]*rotation[:3]\
            + np.cross(rotation[:3], world_rot[:3])
    new_rot_eta = rotation[3] * world_rot[3] \
            - np.dot(rotation[:3].reshape(1,-1), world_rot[:3].reshape(-1,1))
    new_rot = np.append(new_rot_epi, new_rot_eta)
    return new_disp, new_rot

def get_obb_corners(obb):
    center = np.array(obb.center)
    R = np.array(obb.R)
    extent = np.array(obb.extent)

    # Half extents
    half_extent = extent / 2

    # Corners relative to the center
    corners_relative = np.array([
        [-half_extent[0], -half_extent[1], -half_extent[2]],
        [ half_extent[0], -half_extent[1], -half_extent[2]],
        [ half_extent[0],  half_extent[1], -half_extent[2]],
        [-half_extent[0],  half_extent[1], -half_extent[2]],
        [-half_extent[0], -half_extent[1],  half_extent[2]],
        [ half_extent[0], -half_extent[1],  half_extent[2]],
        [ half_extent[0],  half_extent[1],  half_extent[2]],
        [-half_extent[0],  half_extent[1],  half_extent[2]]
    ])

    # Apply rotation and add center to each corner
    corners = [center + R.dot(corner) for corner in corners_relative]
    return np.array(corners)

def unit_vector(vector):
    """Calculate the unit vector of the given vector."""
    # Calculate the magnitude of the vector
    magnitude = np.linalg.norm(vector)
    # Handle the case where the magnitude is zero to avoid division by zero
    if magnitude == 0:
        raise ValueError("Cannot compute the unit vector of a zero vector.")
    # Calculate the unit vector
    return vector / magnitude

def rotation_matrix_to_quaternion(r):
    """
    Convert a rotation matrix to a quaternion.
    """
    r = R.from_matrix(r)
    return r.as_quat()

def sgn(x):
    if x > 0:
        return 1
    elif x < 0:
        return -1
    else:
        return 0

def find_rotation_quaternion(v1, v2):
    """
    Find the rotation quaternion from set v1 to set v2.
    v1 and v2 are lists of numpy arrays representing the x, y, z axis vectors of two coordinate systems.
    """
    # Calculate the rotation matrix
    rotation = np.dot(v2, np.linalg.inv(v1))
    
    # Convert the rotation matrix to a quaternion
    quaternion = rotation_matrix_to_quaternion(rotation)
    print(rotation)
    return quaternion

def get_face_transformations(obb, corners):
    center = np.asarray(obb.center)
    print(center)

    centers = [
        (corners[5]+corners[0])/2,  # Front face center (parallel to XY plane at min Y)
        (corners[6]+corners[1])/2,  # Back face center (parallel to XY plane at max Y)
        (corners[7]+corners[2])/2,  # Left face center (parallel to YZ plane at min X)
        (corners[4]+corners[3])/2  # Right face center (parallel to YZ plane at max X)
    ]
    print(centers)
    face_vectors = np.asarray([
        [corners[1] - corners[0], corners[4] - corners[0]],  # Using bottom rectangle
        [corners[2] - corners[1], corners[5] - corners[1]],   # Using top rectangle
        [corners[3] - corners[2], corners[6] - corners[2]],   # Side faces
        [corners[0] - corners[3], corners[7] - corners[3]]
    ])
    # Unit vectors for each face 
    # Front, Right, Back, Left
    face_unit_vectors = np.asarray([
        [unit_vector(centers[0] - center),unit_vector(face_vectors[0,0]), unit_vector(face_vectors[0,1])],  
        [unit_vector(centers[1] - center), unit_vector(face_vectors[1,0]), unit_vector(face_vectors[1,1])],  
        [unit_vector(centers[2] - center), unit_vector(face_vectors[2,0]), unit_vector(face_vectors[2,1])],  
        [unit_vector(centers[3] - center), unit_vector(face_vectors[3,0]), unit_vector(face_vectors[3,1])]
    ])

    world_frame = np.array([[1,0,0],[0,1,0],[0,0,1]])
    face_quoternions = [find_rotation_quaternion(world_frame, face_unit_vectors[i]) for i in range(4)]
    return centers, face_quoternions

def pc_callback(data):
    rows = data.layout.dim[0].size
    cols = data.layout.dim[1].size
    points = np.array(data.data).reshape((rows, cols))
    print("point data received")

    min_z = np.min(points[:, 2])
    max_z = np.max(points[:, 2])
    points_xy = points.copy()
    points_xy[:, 2] = min_z
    point_cloud = o3d.geometry.PointCloud()
    point_cloud.points = o3d.utility.Vector3dVector(points_xy)

    obb_2d = point_cloud.get_oriented_bounding_box(robust=True)


    obb = o3d.geometry.OrientedBoundingBox(center = np.array([obb_2d.center[0], obb_2d.center[1], (min_z + max_z) / 2]), R =np.array([[obb_2d.R[0,0], obb_2d.R[0,1], 0], [obb_2d.R[1,0], obb_2d.R[1,1], 0],[0, 0, 1]]), extent = np.array([obb_2d.extent[0], obb_2d.extent[1], max_z - min_z]))

    corners = get_obb_corners(obb)

    displacements, quaternions = get_face_transformations(obb, corners)
    for i in range(4):
        print("Displacement: ", displacements[i], "Rotation: ", quaternions[i])
        displacements[i], quaternions[i] = transform_calculation(displacements[i], quaternions[i])

    global transform
    transform = TransformStamped()
    transform.header.stamp = rospy.Time.now()
    transform.header.frame_id = "world"
    transform.child_frame_id = "base_link"
    transform.transform.translation.x = displacements[1][0]
    transform.transform.translation.y = displacements[1][1]
    transform.transform.translation.z = displacements[1][2]
    transform.transform.rotation.x = quaternions[1][0]
    transform.transform.rotation.y = quaternions[1][1]
    transform.transform.rotation.z = quaternions[1][2]
    transform.transform.rotation.w = quaternions[1][3]

def main():
    rospy.init_node('grasping_node')
    pc_sub = rospy.Subscriber('target_pub', Float32MultiArray, pc_callback)
    tf_pub = tf2_ros.StaticTransformBroadcaster()
    tf_pub_1 = rospy.Publisher('gripper_pose', Transform, queue_size=1)
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        if transform is not None:
            print("publishing transform,", transform.transform)
            tf_pub_1.publish(transform.transform)
            tf_pub.sendTransform(transform)
        rate.sleep()

if __name__ == '__main__':
    main()
