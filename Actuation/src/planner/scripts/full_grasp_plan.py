#!/usr/bin/env python3

import rospy, os, sys
sys.path.append('/home/enis/Actuation/src/planner')
from geometry_msgs.msg import Point
from geometry_msgs.msg import Pose
from sensor_msgs.msg import JointState
from std_msgs.msg import Int32, Float64
from utility.helper_function import *
from scripts.arm_controller import arm_controller
from transforms3d.quaternions import quat2mat
import PyKDL as kdl

class gripper_planner:
    def __init__(self):
        self.target_center_pose = None
        self.points = None
        self.armcontroller = arm_controller()
        self.arm_pose = Pose()
        self.touchfb = 0
        self.finger_states = np.array([0,0])
        self.object_visualizer = rospy.Publisher('/object_visualizer', PointCloud2, queue_size=10)
        self.finger_state_pub = rospy.Publisher('joint_states', JointState, queue_size=10)
        self.arduino_finger_state_pub = rospy.Publisher('finger_joint_states', Float32MultiArray, queue_size=1)
        self.state_pub = rospy.Publisher('/state', Int32, queue_size=10)
        self.finger_state_msg = JointState()
        self.finger_state_msg.name = ["finger1_pivot_joint", "finger2_pivot_joint"]
        self.transformation_matrix = None
        self.translation_vector = None
        self.refine_center = None
        self.cur_tar_finger_angles = None
        self.transformed_points = []
        self.finger_angles = np.array([0,0])

    def transform_all_points(self):
        self.transformed_points = []
        cur_pose = self.armcontroller.forward_kinematics(self.armcontroller.angles)
        cur_pose = self.armcontroller.kdl_frame_to_pose(cur_pose)
        print("Current pose", cur_pose)
        for point in self.points:
            self.transformed_points.append([point[0] + cur_pose.position.x, point[1] + cur_pose.position.y, -point[2] + cur_pose.position.z])
        self.transformed_points = np.array(self.transformed_points)

    def transform_point(self, point):
        cur_pose = self.armcontroller.forward_kinematics(self.armcontroller.angles)
        cur_pose = self.armcontroller.kdl_frame_to_pose(cur_pose)
        return [point[0] + cur_pose.position.x, point[1] + cur_pose.position.y, -point[2] + cur_pose.position.z]

    def publish_arm_joints(self):
        self.armcontroller.jointstate_msg.header.stamp = rospy.Time.now()
        pos_list = self.armcontroller.angles.copy()
        pos_list.insert(1, 0)
        self.armcontroller.jointstate_msg.position = pos_list
        self.armcontroller.joints_publisher.publish(self.armcontroller.jointstate_msg)

    def finger_publish(self):
        self.finger_state_msg.header.stamp = rospy.Time.now()
        self.finger_state_msg.position = self.finger_states.copy()
        self.finger_state_pub.publish(self.finger_state_msg)
        finger_msg = Float32MultiArray()
        finger_msg.data = self.finger_states.copy()
        self.arduino_finger_state_pub.publish(finger_msg)

    def finger_movement(self, target, time = 3, steps = 20):
        print("Finger Moving...")
        r = rospy.Rate(1/(time/steps))
        delta_finger = [(a - b)/steps for a, b in zip(target, self.finger_states)]
        for i in range(steps):
            if rospy.is_shutdown():
                return

            self.publish_arm_joints()
            r.sleep()

            local_target = [a + b for a, b in zip(self.finger_states, delta_finger)]
            print(self.finger_state_msg.position)
            self.finger_states = local_target.copy()
            self.finger_publish()
            r.sleep()
        rospy.sleep(1.0)

    def handle_target_center_pose(self, msg):
        self.target_center_pose = msg
    
    def handle_refine_center_pose(self, msg):
        self.refine_center = msg
        self.refine_center = self.transform_point(np.array([self.refine_center.x, self.refine_center.y, self.refine_center.z]))

    def handle_pointcloud(self, msg):
        rows = msg.layout.dim[0].size
        cols = msg.layout.dim[1].size
        self.points = np.array(msg.data).reshape((rows, cols))
        self.transform_all_points()
        print("before transform:", self.points[0], "After transform:", self.transformed_points[0])
        self.object_visualizer.publish(numpy_to_ros_point_cloud(self.transformed_points))
        print("point data received")

    def update_target_center_transform(self):
        tar_x = self.target_center_pose.x
        tar_y = self.target_center_pose.y
        tar_z = self.target_center_pose.z
        cur_pose = self.armcontroller.forward_kinematics(self.armcontroller.angles)
        cur_pose = self.armcontroller.kdl_frame_to_pose(cur_pose)

        self.arm_pose.position.x = tar_x + cur_pose.position.x
        self.arm_pose.position.y = tar_y + cur_pose.position.y
        self.arm_pose.position.z = tar_z - cur_pose.position.z + 0.35
        self.arm_pose.orientation.x = 1
        self.arm_pose.orientation.y = 0
        self.arm_pose.orientation.z = 0
        self.arm_pose.orientation.w = 0
        self.armcontroller.pose = self.arm_pose

        self.target_center_pose = None

    def update_pointcloud_transform(self):
        print("current pose", self.arm_pose)
        # print(self.points[0])
        # self.transform_all_points()
        # print(self.points[0])
        min_z = np.min(self.points[:, 2])
        max_z = np.max(self.points[:, 2])
        points_xy = self.points.copy()
        points_xy[:, 2] = min_z
        point_cloud = o3d.geometry.PointCloud()
        point_cloud.points = o3d.utility.Vector3dVector(points_xy)

        obb_2d = point_cloud.get_oriented_bounding_box(robust=True)


        obb = o3d.geometry.OrientedBoundingBox(center = np.array([obb_2d.center[0], obb_2d.center[1], (min_z + max_z) / 2]), R =np.array([[obb_2d.R[0,0], obb_2d.R[0,1], 0], [obb_2d.R[1,0], obb_2d.R[1,1], 0],[0, 0, 1]]), extent = np.array([obb_2d.extent[0], obb_2d.extent[1], max_z - min_z]))

        corners = get_obb_corners(obb)

        displacements, quaternions = get_face_transformations(obb, corners)
        if self.arm_pose.position is not None:
            ori_disp = np.array([self.arm_pose.position.x, self.arm_pose.position.y, self.arm_pose.position.z])
            ori_rot = np.array([self.arm_pose.orientation.x, self.arm_pose.orientation.y, self.arm_pose.orientation.z, self.arm_pose.orientation.w])
        else:
            ori_disp = None
            ori_rot = None
        for i in range(4):
            # print("Displacement: ", displacements[i], "Rotation: ", quaternions[i])
            displacements[i], quaternions[i] = transform_calculation(displacements[i], quaternions[i], ori_disp, ori_rot)
            # print("New Displacement: ", displacements[i], " New Rotation: ", quaternions[i])

        self.arm_pose.position.x = displacements[0][0]
        self.arm_pose.position.y = displacements[0][1]
        self.arm_pose.position.z = displacements[0][2] + 0.2
        self.arm_pose.orientation.x = quaternions[0][0]
        self.arm_pose.orientation.y = quaternions[0][1]
        self.arm_pose.orientation.z = quaternions[0][2]
        self.arm_pose.orientation.w = quaternions[0][3]

        self.armcontroller.pose = self.arm_pose
        print(self.arm_pose)
        
        self.points = None
    
    def handle_touchfb(self, msg):
        self.touchfb = msg.data
        if self.touchfb > 0.1:
            self.armcontroller.interrupt_movement = True
            self.cur_tar_finger_angles = self.finger_angles.copy()
            self.close_gripper()

    def close_gripper(self):
        self.publish_arm_joints()
        self.finger_movement(self.finger_angles)
    
    def handle_finger_angles(self, msg):
        self.finger_angles = msg.data

    def lateral_movement(self):
        self.arm_pose.position.x = self.refine_center[0]
        self.arm_pose.position.y = self.refine_center[1]
        self.armcontroller._servo_to_pose(self.arm_pose)

def main():
    gripperplanner = gripper_planner()
    rospy.init_node('full_grasp_planner')
    rospy.Subscriber('center_point', Point, gripperplanner.handle_target_center_pose)
    rospy.Subscriber('refine_center_point', Point, gripperplanner.handle_refine_center_pose)
    rospy.Subscriber('target_pub', Float32MultiArray, gripperplanner.handle_pointcloud)
    rospy.Subscriber('touch_fb', Float64, gripperplanner.handle_touchfb)
    rospy.Subscriber('finger_angles', Float32MultiArray, gripperplanner.handle_finger_angles)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        if gripperplanner.target_center_pose is not None and gripperplanner.points is None:
            gripperplanner.update_target_center_transform()
            gripperplanner.armcontroller._servo_to_pose(gripperplanner.armcontroller.pose)
            gripperplanner.cur_tar_finger_angles = [-1.57, -1.57]
            gripperplanner.finger_movement(gripperplanner.cur_tar_finger_angles)
            print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
            gripperplanner.state_pub.publish(2)
        elif gripperplanner.points is not None:
            gripperplanner.update_pointcloud_transform()
            gripperplanner.armcontroller._servo_to_pose(gripperplanner.armcontroller.pose)
            rospy.sleep(1.0)
            gripperplanner.publish_arm_joints()
            rate.sleep()
            gripperplanner.finger_publish()
            rospy.sleep(1.0)
            gripperplanner.lateral_movement()
        elif gripperplanner.armcontroller.pose is None:
            gripperplanner.armcontroller.jointstate_msg.header.stamp = rospy.Time.now()
            pos_list = gripperplanner.armcontroller.angles.copy()
            pos_list.insert(1, 0)
            gripperplanner.armcontroller.jointstate_msg.position = pos_list
            gripperplanner.armcontroller.joints_publisher.publish(gripperplanner.armcontroller.jointstate_msg)
            rate.sleep()
            gripperplanner.finger_state_msg.header.stamp = rospy.Time.now()
            gripperplanner.finger_state_msg.position = gripperplanner.finger_states
            gripperplanner.finger_publish()
        rate.sleep()

if __name__ == '__main__':
    main()
