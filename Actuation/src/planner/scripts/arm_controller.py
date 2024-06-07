#!/usr/bin/env python3
from geometry_msgs.msg import Pose
import rospkg
import rospy

from geometry_msgs.msg import Pose, Point, Quaternion
import kdl_parser_py.urdf as kdl_urdf
from urdf_parser_py.urdf import URDF
import PyKDL

from geometry_msgs.msg import TransformStamped
from sensor_msgs.msg import JointState


class arm_controller():
    def __init__(self, urdf_path = "/home/enis/Actuation/src/planner/urdf/sawyer_urdf.urdf"):
        self.pose = None
        self.interrupt_movement = False

        self.joints_publisher = rospy.Publisher("joint_states", JointState, queue_size=1)
        self.jointstate_msg = JointState()
        self.jointstate_msg.name = ["right_j0", "head_pan", "right_j1", "right_j2", "right_j3", "right_j4", "right_j5", "right_j6"]
        self.robot_tree = self.load_kdl_tree(urdf_path)
        print(self.robot_tree)
        self.fk_solver, self.ik_solver = self.setup_kdl_chain(self.robot_tree, "right_arm_base_link", "right_l6")
        self.angles = [  0.15396, -1.13459, -0.20446, 2.00036, 0.130743, 0.717295, 0.0439693]
        self.base_link = "right_arm_base_link"
        self.tip_link = "right_l6"
    
    def kdl_frame_to_pose(self, frame):
        pose = Pose()
        pose.position = Point(frame.p[0], frame.p[1], frame.p[2])
        x, y, z, w = frame.M.GetQuaternion()
        pose.orientation = Quaternion(x, y, z, w)
        return pose

    def forward_kinematics(self, joint_angles):
        # Extract the chain from the tree
        chain = self.robot_tree.getChain(self.base_link, self.tip_link)
        # Set up forward kinematics solver
        fk_solver = PyKDL.ChainFkSolverPos_recursive(chain)
        # Create a KDL Joint Array from joint angles
        joint_positions = PyKDL.JntArray(len(joint_angles))
        for i, angle in enumerate(joint_angles):
            joint_positions[i] = angle
        # Calculate forward kinematics
        end_effector_frame = PyKDL.Frame()
        fk_solver.JntToCart(joint_positions, end_effector_frame)
        return end_effector_frame
        # verify robot is enabled

    def load_kdl_tree(self, robot_urdf_path):
        # Load URDF file into a URDF model
        robot_urdf = URDF.from_xml_file(robot_urdf_path)
        
        # Parse the URDF to get the KDL tree
        success, tree = kdl_urdf.treeFromUrdfModel(robot_urdf)
        if not success:
            raise Exception("Failed to extract KDL tree from URDF")
        
        return tree

    def setup_kdl_chain(self, tree, base_link, tip_link):
        # Extract the chain from the tree
        chain = tree.getChain(base_link, tip_link)
        
        # Create the IK solver, using the ChainIkSolverPos_LMA for example
        fk_solver = PyKDL.ChainFkSolverPos_recursive(chain)
        ik_solver = PyKDL.ChainIkSolverPos_LMA(chain)
        
        return fk_solver, ik_solver
    
    def create_initial_jnt_array(self, joint_values):
        # Create a JntArray with the size of the number of joints
        jnt_array = PyKDL.JntArray(len(joint_values))
        
        # Populate the JntArray with the joint values
        for i, val in enumerate(joint_values):
            jnt_array[i] = val
        
        return jnt_array

    def jntarray_to_list(self, jnt_array):
        """
        Convert a PyKDL.JntArray to a Python list.
        
        Args:
            jnt_array (PyKDL.JntArray): The JntArray to convert.
            
        Returns:
            list: A list of joint values.
        """
        joint_list = []
        for i in range(jnt_array.rows()):
            joint_list.append(jnt_array[i])
        return joint_list

    def calculate_inverse_kinematics(self, ik_solver, initial_joints, pose):
        # Convert ROS Pose to KDL Frame
        rotation = PyKDL.Rotation.Quaternion(pose.orientation.x, pose.orientation.y, pose.orientation.z, pose.orientation.w)
        position = PyKDL.Vector(pose.position.x, pose.position.y, pose.position.z)
        desired_frame = PyKDL.Frame(rotation, position)

        # Output joint array
        result_joints = PyKDL.JntArray(7)

        # Solve IK
        initial_joints = self.create_initial_jnt_array(initial_joints)
        if ik_solver.CartToJnt(initial_joints, desired_frame, result_joints) >= 0:
            return result_joints
        else:
            rospy.logerr("Inverse kinematics failed.")
            return None


    def handle_pose(self, msg):
        self.pose = msg
        self._servo_to_pose(self.pose)

    def move_to_start(self, start_angles=None):
        print("Moving the {0} arm to start pose...".format(self._limb_name))
        if not start_angles:
            start_angles = dict(zip(self._joint_names, [0]*7))
        self._guarded_move_to_joint_position(start_angles)


    def _guarded_move_to_joint_position(self, joint_angles, timeout=5.0):
        if rospy.is_shutdown():
            return
        if joint_angles:
            self._limb.move_to_joint_positions(joint_angles,timeout=timeout)
        else:
            rospy.logerr("No Joint Angles provided for move_to_joint_positions. Staying put.")

    def _servo_to_pose(self, pose, time=4.0, steps=50):
        print("Pose Received, starting servo to pose...")
        ''' An *incredibly simple* linearly-interpolated Cartesian move '''
        self.interrupt_movement = False
        r = rospy.Rate(1/(time/steps)) # Defaults to 100Hz command rate
        joint_angles = self.calculate_inverse_kinematics(self.ik_solver, self.angles, pose)
        print(joint_angles)
        if joint_angles:
            joint_angles = self.jntarray_to_list(joint_angles)
            delta_angle = [(a - b)/(steps) for a, b in zip(joint_angles, self.angles)]
            for d in range(int(steps)):
                if rospy.is_shutdown() or self.interrupt_movement:
                    return
                target_angles = [a + b for a, b in zip(delta_angle, self.angles)]
                self.angles = target_angles.copy()
                target_angles.insert(1, 0)
                self.jointstate_msg.header.stamp = rospy.Time.now()
                self.jointstate_msg.position = target_angles
                self.joints_publisher.publish(self.jointstate_msg)
                print(target_angles)
                r.sleep()
        else:
            rospy.logerr("No Joint Angles provided for move_to_joint_positions. Staying put.")
            r.sleep()
        self.pose = None
        rospy.sleep(1.0)

if __name__ == "__main__":
    rospy.init_node("arm_controller")
    arm =arm_controller()
    pose_subscriber = rospy.Subscriber("arm_pose", Pose, arm.handle_pose)

    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        if arm.pose is None:
            arm.jointstate_msg.header.stamp = rospy.Time.now()
            arm.jointstate_msg.position = [0]*8
            arm.joints_publisher.publish(arm.jointstate_msg)
        rate.sleep()
