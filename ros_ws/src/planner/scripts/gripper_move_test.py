#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import JointState
from geometry_msgs.msg import TransformStamped
from geometry_msgs.msg import Transform
import tf2_ros

latest_transform = None

def joint_state_cb(msg):
    global latest_transform
    latest_transform = msg
    rospy.loginfo("Received transform: %s" % msg)

if __name__ == '__main__':
# Initialize ROS node
    rospy.init_node('gripper_move_test')

# Joint state publisher
    joint_pub = rospy.Publisher('/joint_states', JointState, queue_size=10)
    tf_pub = tf2_ros.StaticTransformBroadcaster()
    pos_sub = rospy.Subscriber('/gripper_pos', Transform, joint_state_cb)

    joint_state = JointState()
    joint_state.name = ["finger1_pivot_joint", "finger2_pivot_joint"]
    joint_state.position = [0.05, -0.13]

    transform = TransformStamped()
    transform.header.stamp = rospy.Time.now()
    transform.header.frame_id = "world"
    transform.child_frame_id = "base_link"

    transform.transform.translation.x = 0.0
    transform.transform.translation.y = 0.0
    transform.transform.translation.z = 0.0

    transform.transform.rotation.x = 0.0
    transform.transform.rotation.y = 0.0
    transform.transform.rotation.z = 0.0
    transform.transform.rotation.w = 1.0
    
    tf_pub.sendTransform(transform)

    frequency = 20;
    rate = rospy.Rate(frequency)

    while not rospy.is_shutdown():
        if latest_transform!= None:
            tf_pub.sendTransform(latest_transform)
            joint_state.position[0] -= 0.01
            joint_state.position[1] -= 0.01
        joint_state.header.stamp = rospy.Time.now()
        joint_pub.publish(joint_state) 
        rate.sleep()

