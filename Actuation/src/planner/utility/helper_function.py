from sensor_msgs.msg import PointField, PointCloud2
import sensor_msgs.point_cloud2 as pc2
from geometry_msgs.msg import Transform
from geometry_msgs.msg import TransformStamped
from std_msgs.msg import Float32MultiArray
from std_msgs.msg import Header
import tf2_ros
import numpy as np
import pyransac3d as pyrsc
import struct
from scipy.spatial.transform import Rotation as R
import open3d as o3d

def numpy_to_ros_point_cloud(points, frame_id="base"):
    header = Header(frame_id=frame_id)
    fields = [PointField('x', 0, PointField.FLOAT32, 1),
                PointField('y', 4, PointField.FLOAT32, 1),
                PointField('z', 8, PointField.FLOAT32, 1),
                PointField('rgb', 12, PointField.FLOAT32, 1)] # Note the use of UINT32 for RGB]
    
    packed_rgb = np.array([0, 255, 255])
    packed_rgb = (packed_rgb[0] << 16) | (packed_rgb[1] << 8) | packed_rgb[2]
    packed_rgb_float = struct.unpack('f', struct.pack('I', packed_rgb))[0]
    packed_rgb_float_array = np.repeat(packed_rgb_float, points.shape[0]).astype(np.float32)
    cloud_data = np.c_[points[:, :3], packed_rgb_float_array]
    return pc2.create_cloud(header, fields, cloud_data)

def transform_calculation(displacement, rotation, sec_disp = None, sec_rot = None):
    if sec_disp is None and sec_rot is None:
        world_disp = np.array([1.8, 4.0, 4.05])
        world_rot = np.array([0.7072, 0.0, -0.7072, 0.0])
    else:
        world_disp = sec_disp
        world_rot = sec_rot
    new_disp =  np.dot(R.from_quat(world_rot).as_matrix(), displacement) + world_disp
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
    return quaternion

def get_face_transformations(obb, corners):
    center = np.asarray(obb.center)

    centers = [
        (corners[5]+corners[0])/2,  # Front face center (parallel to XY plane at min Y)
        (corners[6]+corners[1])/2,  # Back face center (parallel to XY plane at max Y)
        (corners[7]+corners[2])/2,  # Left face center (parallel to YZ plane at min X)
        (corners[4]+corners[3])/2  # Right face center (parallel to YZ plane at max X)
    ]
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
