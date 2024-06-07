#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pc2
import pyransac3d as pyrsc
import numpy as np
from std_msgs.msg import String, Float32MultiArray, MultiArrayDimension
import json


# %%
def callback(point_cloud_msg):
    points_list = list(pc2.read_points(point_cloud_msg, skip_nans=True, field_names=("x", "y", "z")))
    points = np.array(points_list)
    
    shape, params = detect_shape(points)
    print(shape, params)
    
    # Publish the detected shape
    shape_msg = String()
    shape_msg.data = shape
    shape_pub.publish(shape_msg)
    
    # Prepare and publish the shape parameters
    params_msg = Float32MultiArray()
    params_msg.layout.dim = [MultiArrayDimension()]
    params_msg.layout.dim[0].size = len(params)
    params_msg.layout.dim[0].stride = 1
    params_msg.layout.dim[0].label = 'params'  # You can give a label to your dimension
    params_msg.data = params
    params_pub.publish(params_msg)

# %%
def detect_shape(points, camera_horizontal_orient = True):
    if camera_horizontal_orient != True:
        cubid_1 = pyrsc.Cuboid()
        cubest_eq, cubest_inliers = cubid_1.fit(points, 0.002)
    plane_1 = pyrsc.Plane()
    plbest_eq, plbest_inliers = plane_1.fit(points, 0.002)
    cylinder_1 = pyrsc.Cylinder()
    cycenter, axis, cyradius, cybest_inliers = cylinder_1.fit(points, 0.001)
    sphere_1 = pyrsc.Sphere()
    sphcenter, sphradius, sphbest_inliers = sphere_1.fit(points, 0.0015)

    if camera_horizontal_orient != True:
        inliers_counts = {
            "Cuboid": len(cubest_inliers),
            "Plane": len(plbest_inliers),
            "Cylinder": len(cybest_inliers),
            "Sphere": len(sphbest_inliers)
        }
    else:
        inliers_counts = {
        "Plane": len(plbest_inliers),
        "Cylinder": len(cybest_inliers),
        "Sphere": len(sphbest_inliers)
        }
    print(inliers_counts)
    # Determine the shape with the most inliers
    best_shape = max(inliers_counts, key=inliers_counts.get)

    # Return the shape and its parameters
    if best_shape == "Cuboid":
        return best_shape, cubest_eq
    elif best_shape == "Plane":
        return best_shape, plbest_eq
    elif best_shape == "Cylinder":
        return best_shape, (cycenter, axis, cyradius)
    elif best_shape == "Sphere":
        return best_shape, (sphcenter, sphradius)


def listener():
    global shape_pub, params_pub
    rospy.init_node('point_cloud_processor', anonymous=True)
    
    # Initialize publishers
    shape_pub = rospy.Publisher('/detected_shape', String, queue_size=10)
    params_pub = rospy.Publisher('/shape_params', Float32MultiArray, queue_size=10)
    
    rospy.Subscriber("/target_pub", PointCloud2, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()