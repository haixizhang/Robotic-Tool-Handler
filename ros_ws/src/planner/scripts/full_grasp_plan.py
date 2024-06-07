#!/usr/bin/env python3

import rospy, os, sys
sys.path.append('/home/enis/Actuation/src/planner')
from geometry_msgs.msg import Point
from geometry_msgs.msg import Pose
from sensor_msgs.msg import JointState
from std_msgs.msg import Float64
from utility.helper_function import *
from scripts.arm_controller import arm_controller
import PyKDL as kdl

class gripper_planner:
    def __init__(self):
        self.target_center_pose = None
        self.points = None
        self.armcontroller = arm_controller()
        self.arm_pose = Pose()
        self.touchfb = 0
        self.finger_states = [0,0]
        self.finger_state_pub = rospy.Publisher('joint_states', JointState, queue_size=10)
        self.finger_state_msg = JointState()
        self.finger_state_msg.name = ["finger1_pivot_joint", "finger2_pivot_joint"]
        self.transformation_matrix = None
        self.translation_vector = None

    def transform_point(self, point):
        print("point: ", point)
        point_hom = np.append(point, 1)
        transformation_full = np.eye(4)
        transformation_full[:3, :3] = self.transformation_matrix
        transformation_full[:3, 3] = self.translation_vector
        # Apply transformation
        transformed_point_hom = np.dot(transformation_full, point_hom)
        print("transformed_point_hom: ", transformed_point_hom)
        return transformed_point_hom[:3]

    def transform_all_points(self):
        frame = kdl.Frame()
        self.armcontroller.fk_solver.JntToCart(self.armcontroller.angles, frame)
        self.transformation_matrix = frame.M
        self.translation_vector = frame.p
        print("transformation_matrix: ", self.transformation_matrix, self.translation_vector)
        transformed_points = [self.transform_point(point) for point in self.points]
        self.points = transformed_points.copy()


    def finger_movement(self, target, time = 2.0, steps = 25):
        print("Finger Moving...")
        r = rospy.Rate(1/(time/steps))
        delta_finger = [(a - b)/steps for a, b in zip(target, self.finger_states)]
        for i in range(steps):
            if rospy.is_shutdown():
                return
            local_target = [a + b for a, b in zip(self.finger_states, delta_finger)]
            self.finger_state_msg.header.stamp = rospy.Time.now()
            self.finger_state_msg.position = local_target.copy()
            print(self.finger_state_msg.position)
            self.finger_state_pub.publish(self.finger_state_msg)
            self.finger_states = local_target.copy()
            r.sleep()

    def handle_target_center_pose(self, msg):
        self.target_center_pose = msg

    def handle_pointcloud(self, msg):
        rows = msg.layout.dim[0].size
        cols = msg.layout.dim[1].size
        self.points = np.array(msg.data).reshape((rows, cols))
        print("point data received")

    def update_target_center_transform(self):
        transformed_target_pose = self.transform_point(self.target_center_pose)
        tar_x = self.target_center_pose.x
        tar_y = self.target_center_pose.y
        tar_z = self.target_center_pose.z + 0.2
        cur_pose = self.armcontroller.forward_kinematics(self.armcontroller.angles)
        cur_pose = self.armcontroller.kdl_frame_to_pose(cur_pose)

        self.arm_pose.position.x = tar_x + cur_pose.position.x
        self.arm_pose.position.y = tar_y + cur_pose.position.y
        self.arm_pose.position.z = tar_z + cur_pose.position.z
        self.arm_pose.orientation.x = 1
        self.arm_pose.orientation.y = 0
        self.arm_pose.orientation.z = 0
        self.arm_pose.orientation.w = 0
        self.armcontroller.pose = self.arm_pose

        self.target_center_pose = None

    def update_pointcloud_transform(self):
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
            print("Displacement: ", displacements[i], "Rotation: ", quaternions[i])
            displacements[i], quaternions[i] = transform_calculation(displacements[i], quaternions[i], ori_disp, ori_rot)
            print("New Displacement: ", displacements[i], " New Rotation: ", quaternions[i])

        self.arm_pose.position.x = displacements[1][0]
        self.arm_pose.position.y = displacements[1][1]
        self.arm_pose.position.z = displacements[1][2]
        self.arm_pose.orientation.x = quaternions[1][0]
        self.arm_pose.orientation.y = quaternions[1][1]
        self.arm_pose.orientation.z = quaternions[1][2]
        self.arm_pose.orientation.w = quaternions[1][3]

        self.armcontroller.pose = self.arm_pose
        
        self.points = None
    
    def handle_touchfb(self, msg):
        self.touchfb = msg

def main():
    gripperplanner = gripper_planner()
    rospy.init_node('full_grasp_planner')
    rospy.Subscriber('center_point', Point, gripperplanner.handle_target_center_pose)
    rospy.Subscriber('target_pub', Float32MultiArray, gripperplanner.handle_pointcloud)
    rospy.Subscriber('touch_fb', Float64, gripperplanner.handle_touchfb)
    finger_publisher = rospy.Publisher('joint_states', JointState, queue_size=1)
    rate = rospy.Rate(5)

    while not rospy.is_shutdown():
        if gripperplanner.target_center_pose is not None and gripperplanner.points is None:
            gripperplanner.update_target_center_transform()
            gripperplanner.armcontroller._servo_to_pose(gripperplanner.armcontroller.pose)
            gripperplanner.finger_movement([-1.57, -1.57])
        elif gripperplanner.points is not None:
            gripperplanner.update_pointcloud_transform()
            gripperplanner.armcontroller._servo_to_pose(gripperplanner.armcontroller.pose)
        elif gripperplanner.armcontroller.pose is None:
            gripperplanner.armcontroller.jointstate_msg.header.stamp = rospy.Time.now()
            pos_list = gripperplanner.armcontroller.angles.copy()
            pos_list.insert(1, 0)
            gripperplanner.armcontroller.jointstate_msg.position = pos_list
            gripperplanner.armcontroller.joints_publisher.publish(gripperplanner.armcontroller.jointstate_msg)
            rate.sleep()
            gripperplanner.finger_state_msg.header.stamp = rospy.Time.now()
            gripperplanner.finger_state_msg.position = gripperplanner.finger_states
            gripperplanner.finger_state_pub.publish(gripperplanner.finger_state_msg)
        rate.sleep()

if __name__ == '__main__':
    main()
