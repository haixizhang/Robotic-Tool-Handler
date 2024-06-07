#!/usr/bin/env python3
import rospy
import struct
from sensor_msgs.msg import PointCloud2, PointField
from geometry_msgs.msg import Point
import numpy as np
from std_msgs.msg import Header
from std_msgs.msg import Float32MultiArray, MultiArrayDimension

def read_points_from_file(filename):
    with open(filename, 'r') as file:
        # Read lines, stripping the newline characters and leading/trailing brackets
        lines = file.read().strip()[2:-2].split(']\n [')

    # Process each line
    list_of_lists = []
    for line in lines:
        # Split the line by spaces into individual strings, filtering out empty strings
        numbers_str = filter(None, line.split(' '))
        # Convert each string into a float and append to the list_of_lists
        list_of_lists.append([float(num) for num in numbers_str])

    # Convert the list to a NumPy array
    points = np.array(list_of_lists)[:, 0:3]
    return points

def create_point_cloud2(points,frame_id='camera_links'):
    header = Header(frame_id=frame_id)
    header.stamp = rospy.Time.now()
    
    fields = [PointField(name='x', offset=0, datatype=PointField.FLOAT32, count=1),
              PointField(name='y', offset=4, datatype=PointField.FLOAT32, count=1),
              PointField(name='z', offset=8, datatype=PointField.FLOAT32, count=1),
              PointField('rgb', 12, PointField.UINT32, 1)]
    
    buf = []
    for x, y, z, r, g, b in points:
        # Ensure r, g, b are integers for the bitwise operation, then pack as UINT32 (using '<I' for little endian)
        packed_rgb = struct.pack('I', (int(r) << 16) | (int(g) << 8) | int(b))
        buf.append(struct.pack('fff', x, y, z) + packed_rgb)

    point_cloud = PointCloud2(
        header=header,
        height=1,  # 1 since it's unordered
        width=len(points),
        is_dense=False,
        is_bigendian=False,
        fields=fields,
        point_step=16,  # 4 fields * 4 bytes per field
        row_step=16 * len(points),
        data=bytearray(b''.join(buf))
    )
    return point_cloud

def main():
    rospy.init_node('point_cloud_publisher')
    test_pub = rospy.Publisher('target_pub', Float32MultiArray, queue_size=10)
    test_center_pub = rospy.Publisher('refine_center_point', Point, queue_size=10)
    rate = rospy.Rate(0.1) # 1 Hz

    filename = "/home/enis/ros_ws/apple_points.txt" # Update this with your actual file path
    points = np.loadtxt(filename, delimiter=',')
    center_point = points[points.shape[0]//2]
    center_point_msg = Point()
    center_point_msg.x = center_point[0]
    center_point_msg.y = center_point[1]
    center_point_msg.z = center_point[2]

    ros_array = Float32MultiArray()
    ros_array.layout.dim = [MultiArrayDimension(label='rows', size=points.shape[0], stride=points.shape[0]*points.shape[1]),
                            MultiArrayDimension(label='cols', size=points.shape[1], stride=points.shape[1])]
    ros_array.layout.data_offset = 0  # you can set this to zero
    ros_array.data = points.ravel()  # Flatten the array

    while not rospy.is_shutdown():
        test_pub.publish(ros_array)
        test_center_pub.publish(center_point_msg)
        rate.sleep()

if __name__ == '__main__':
    main()
