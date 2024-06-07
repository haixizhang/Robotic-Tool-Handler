; Auto-generated. Do not edit!


(cl:in-package intera_motion_msgs-msg)


;//! \htmlinclude Trajectory.msg.html

(cl:defclass <Trajectory> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector intera_motion_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'intera_motion_msgs-msg:Waypoint :initial-element (cl:make-instance 'intera_motion_msgs-msg:Waypoint)))
   (trajectory_options
    :reader trajectory_options
    :initarg :trajectory_options
    :type intera_motion_msgs-msg:TrajectoryOptions
    :initform (cl:make-instance 'intera_motion_msgs-msg:TrajectoryOptions)))
)

(cl:defclass Trajectory (<Trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_motion_msgs-msg:<Trajectory> is deprecated: use intera_motion_msgs-msg:Trajectory instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:label-val is deprecated.  Use intera_motion_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:joint_names-val is deprecated.  Use intera_motion_msgs-msg:joint_names instead.")
  (joint_names m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:waypoints-val is deprecated.  Use intera_motion_msgs-msg:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'trajectory_options-val :lambda-list '(m))
(cl:defmethod trajectory_options-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:trajectory_options-val is deprecated.  Use intera_motion_msgs-msg:trajectory_options instead.")
  (trajectory_options m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory>) ostream)
  "Serializes a message object of type '<Trajectory>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joint_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_options) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory>) istream)
  "Deserializes a message object of type '<Trajectory>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'intera_motion_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_options) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory>)))
  "Returns string type for a message object of type '<Trajectory>"
  "intera_motion_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory)))
  "Returns string type for a message object of type 'Trajectory"
  "intera_motion_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory>)))
  "Returns md5sum for a message object of type '<Trajectory>"
  "9ab7e6d17ba67f0a6b00ab5f35f6d93e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory)))
  "Returns md5sum for a message object of type 'Trajectory"
  "9ab7e6d17ba67f0a6b00ab5f35f6d93e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory>)))
  "Returns full string definition for message of type '<Trajectory>"
  (cl:format cl:nil "# Representation of a trajectory used by the engine and motion controller.~%~%# optional label~%string label~%~%# Array of joint names that correspond to the waypoint joint_positions~%string[] joint_names~%~%# Array of waypoints that comprise the trajectory~%Waypoint[] waypoints~%~%# Trajectory level options~%TrajectoryOptions trajectory_options~%================================================================================~%MSG: intera_motion_msgs/Waypoint~%# Representation of a waypoint used by the motion controller~%~%# Desired joint positions~%# For Cartesian segments, the joint positions are used as nullspace biases~%float64[] joint_positions~%~%# Name of the endpoint that is currently active~%string active_endpoint~%~%# Cartesian pose~%# This is not used in trajectories using joint interpolation~%geometry_msgs/PoseStamped pose~%~%# Waypoint specific options~%# Default values will be used if not set~%# All waypoint options are applied to the segment moving to that waypoint~%WaypointOptions options~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: intera_motion_msgs/WaypointOptions~%# Optional waypoint label~%string label~%~%# Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)~%float64 max_joint_speed_ratio~%~%# Slowdown heuristic is triggered if tracking error exceeds tolerances - radians~%float64[] joint_tolerances~%~%# Maximum accelerations for each joint (only for joint paths) - rad/s^2.~%float64[] max_joint_accel~%~%~%###########################################################~%# The remaining parameters only apply to Cartesian paths~%~%# Maximum linear speed of endpoint - m/s~%float64 max_linear_speed~%~%# Maximum linear acceleration of endpoint - m/s^2~%float64 max_linear_accel~%~%# Maximum rotational speed of endpoint - rad/s~%float64 max_rotational_speed~%~%# Maximum rotational acceleration of endpoint - rad/s^2~%float64 max_rotational_accel~%~%# Used for smoothing corners for continuous motion - m~%# The distance from the waypoint to where the curve starts while blending from~%# one straight line segment to the next.~%# Larger distance:  trajectory passes farther from the waypoint at a higher speed~%# Smaller distance:  trajectory passes closer to the waypoint at a lower speed~%# Zero distance:  trajectory passes through the waypoint at zero speed~%float64 corner_distance~%~%================================================================================~%MSG: intera_motion_msgs/TrajectoryOptions~%# Trajectory interpolation type~%string CARTESIAN=CARTESIAN~%string JOINT=JOINT~%string interpolation_type~%~%# True if the trajectory uses interaction control, false for position control.~%bool interaction_control~%~%# Interaction control parameters~%intera_core_msgs/InteractionControlCommand interaction_params~%~%# Allow small joint adjustments at the beginning of Cartesian trajectories.~%# Set to false for 'small' motions.~%bool nso_start_offset_allowed~%~%# Check the offset at the end of a Cartesian trajectory from the final waypoint nullspace goal.~%bool nso_check_end_offset~%~%# Options for the tracking controller:~%TrackingOptions tracking_options~%~%# Desired trajectory end time, ROS timestamp~%time end_time~%~%# The rate in seconds that the path is interpolated and returned back to the user~%# No interpolation will happen if set to zero~%float64 path_interpolation_step~%~%================================================================================~%MSG: intera_core_msgs/InteractionControlCommand~%# Message sets the interaction (impedance/force) control on or off~%# It also contains desired cartesian stiffness K, damping D, and force values~%~%Header header~%bool      interaction_control_active~%~%## Cartesian Impedance Control Parameters~%# Stiffness units are (N/m) for first 3 and (Nm/rad) for second 3 values~%float64[] K_impedance~%# Force certain directions to have maximum possible impedance for a given pose~%bool[] max_impedance~%# Damping units are (Ns/m) for first 3 and (Nms/rad) for the second 3 values~%float64[] D_impedance~%# Joint Nullspace stiffness units are in (Nm/rad) (length == number of joints)~%float64[] K_nullspace~%~%## Parameters for force control or impedance control with force limit~%# If in force mode, this is the vector of desired forces/torques~%# to be regulated in (N) and (Nm)~%# If in impedance with force limit mode, this vector specifies the~%# magnitude of forces/torques (N and Nm) that the command will not exceed.~%float64[] force_command~%~%## Desired frame~%geometry_msgs/Pose interaction_frame~%string endpoint_name~%# True if impedance and force commands are defined in endpoint frame~%bool in_endpoint_frame~%~%# Set to true to disable damping during force control. Damping is used~%# to slow down robot motion during force control in free space.~%# Option included for SDK users to disable damping in force control~%bool disable_damping_in_force_control~%~%# Set to true to disable reference resetting. Reference resetting is~%# used when interaction parameters change, in order to avoid jumps/jerks.~%# Option included for SDK users to disable reference resetting if the~%# intention is to change interaction parameters.~%bool disable_reference_resetting~%~%## Mode Selection Parameters~%# The possible interaction control modes are:~%# Impedance mode: implements desired endpoint stiffness and damping.~%uint8 IMPEDANCE_MODE=1~%# Force mode: applies force/torque in the specified dimensions.~%uint8 FORCE_MODE=2~%# Impedance with force limit: impedance control while ensuring the commanded~%# forces/torques do not exceed force_command.~%uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3~%# Force with motion bounds: force control while ensuring the current~%# pose/velocities do not exceed forceMotionThreshold (currenetly defined in yaml)~%uint8 FORCE_WITH_MOTION_LIMIT_MODE=4~%~%# Specifies the interaction control mode for each Cartesian dimension (6)~%uint8[] interaction_control_mode~%~%# All 6 values in force and impedance parameter vectors have to be filled,~%# If a control mode is not used in a Cartesian dimension,~%# the corresponding parameters will be ignored.~%~%## Parameters for Constrained Zero-G Behaviors~%# Allow for arbitrary rotational displacements from the current orientation~%# for constrained zero-G. Setting 'rotations_for_constrained_zeroG = True'~%# will disable the rotational stiffness field which limits rotational~%# displacements to +/- 82.5 degree.~%# NOTE: it will be only enabled for a stationary reference orientation~%bool rotations_for_constrained_zeroG~%~%================================================================================~%MSG: intera_motion_msgs/TrackingOptions~%# Minimum trajectory tracking time rate:  (default = less than one)~%bool     use_min_time_rate~%float64  min_time_rate~%~%# Maximum trajectory tracking time rate:  (1.0 = real-time = default)~%bool     use_max_time_rate~%float64  max_time_rate~%~%# Angular error tolerance at final point on trajectory (rad)~%float64[] goal_joint_tolerance~%~%# Time for the controller to settle within joint tolerances at the goal (sec)~%bool     use_settling_time_at_goal~%float64  settling_time_at_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory)))
  "Returns full string definition for message of type 'Trajectory"
  (cl:format cl:nil "# Representation of a trajectory used by the engine and motion controller.~%~%# optional label~%string label~%~%# Array of joint names that correspond to the waypoint joint_positions~%string[] joint_names~%~%# Array of waypoints that comprise the trajectory~%Waypoint[] waypoints~%~%# Trajectory level options~%TrajectoryOptions trajectory_options~%================================================================================~%MSG: intera_motion_msgs/Waypoint~%# Representation of a waypoint used by the motion controller~%~%# Desired joint positions~%# For Cartesian segments, the joint positions are used as nullspace biases~%float64[] joint_positions~%~%# Name of the endpoint that is currently active~%string active_endpoint~%~%# Cartesian pose~%# This is not used in trajectories using joint interpolation~%geometry_msgs/PoseStamped pose~%~%# Waypoint specific options~%# Default values will be used if not set~%# All waypoint options are applied to the segment moving to that waypoint~%WaypointOptions options~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: intera_motion_msgs/WaypointOptions~%# Optional waypoint label~%string label~%~%# Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)~%float64 max_joint_speed_ratio~%~%# Slowdown heuristic is triggered if tracking error exceeds tolerances - radians~%float64[] joint_tolerances~%~%# Maximum accelerations for each joint (only for joint paths) - rad/s^2.~%float64[] max_joint_accel~%~%~%###########################################################~%# The remaining parameters only apply to Cartesian paths~%~%# Maximum linear speed of endpoint - m/s~%float64 max_linear_speed~%~%# Maximum linear acceleration of endpoint - m/s^2~%float64 max_linear_accel~%~%# Maximum rotational speed of endpoint - rad/s~%float64 max_rotational_speed~%~%# Maximum rotational acceleration of endpoint - rad/s^2~%float64 max_rotational_accel~%~%# Used for smoothing corners for continuous motion - m~%# The distance from the waypoint to where the curve starts while blending from~%# one straight line segment to the next.~%# Larger distance:  trajectory passes farther from the waypoint at a higher speed~%# Smaller distance:  trajectory passes closer to the waypoint at a lower speed~%# Zero distance:  trajectory passes through the waypoint at zero speed~%float64 corner_distance~%~%================================================================================~%MSG: intera_motion_msgs/TrajectoryOptions~%# Trajectory interpolation type~%string CARTESIAN=CARTESIAN~%string JOINT=JOINT~%string interpolation_type~%~%# True if the trajectory uses interaction control, false for position control.~%bool interaction_control~%~%# Interaction control parameters~%intera_core_msgs/InteractionControlCommand interaction_params~%~%# Allow small joint adjustments at the beginning of Cartesian trajectories.~%# Set to false for 'small' motions.~%bool nso_start_offset_allowed~%~%# Check the offset at the end of a Cartesian trajectory from the final waypoint nullspace goal.~%bool nso_check_end_offset~%~%# Options for the tracking controller:~%TrackingOptions tracking_options~%~%# Desired trajectory end time, ROS timestamp~%time end_time~%~%# The rate in seconds that the path is interpolated and returned back to the user~%# No interpolation will happen if set to zero~%float64 path_interpolation_step~%~%================================================================================~%MSG: intera_core_msgs/InteractionControlCommand~%# Message sets the interaction (impedance/force) control on or off~%# It also contains desired cartesian stiffness K, damping D, and force values~%~%Header header~%bool      interaction_control_active~%~%## Cartesian Impedance Control Parameters~%# Stiffness units are (N/m) for first 3 and (Nm/rad) for second 3 values~%float64[] K_impedance~%# Force certain directions to have maximum possible impedance for a given pose~%bool[] max_impedance~%# Damping units are (Ns/m) for first 3 and (Nms/rad) for the second 3 values~%float64[] D_impedance~%# Joint Nullspace stiffness units are in (Nm/rad) (length == number of joints)~%float64[] K_nullspace~%~%## Parameters for force control or impedance control with force limit~%# If in force mode, this is the vector of desired forces/torques~%# to be regulated in (N) and (Nm)~%# If in impedance with force limit mode, this vector specifies the~%# magnitude of forces/torques (N and Nm) that the command will not exceed.~%float64[] force_command~%~%## Desired frame~%geometry_msgs/Pose interaction_frame~%string endpoint_name~%# True if impedance and force commands are defined in endpoint frame~%bool in_endpoint_frame~%~%# Set to true to disable damping during force control. Damping is used~%# to slow down robot motion during force control in free space.~%# Option included for SDK users to disable damping in force control~%bool disable_damping_in_force_control~%~%# Set to true to disable reference resetting. Reference resetting is~%# used when interaction parameters change, in order to avoid jumps/jerks.~%# Option included for SDK users to disable reference resetting if the~%# intention is to change interaction parameters.~%bool disable_reference_resetting~%~%## Mode Selection Parameters~%# The possible interaction control modes are:~%# Impedance mode: implements desired endpoint stiffness and damping.~%uint8 IMPEDANCE_MODE=1~%# Force mode: applies force/torque in the specified dimensions.~%uint8 FORCE_MODE=2~%# Impedance with force limit: impedance control while ensuring the commanded~%# forces/torques do not exceed force_command.~%uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3~%# Force with motion bounds: force control while ensuring the current~%# pose/velocities do not exceed forceMotionThreshold (currenetly defined in yaml)~%uint8 FORCE_WITH_MOTION_LIMIT_MODE=4~%~%# Specifies the interaction control mode for each Cartesian dimension (6)~%uint8[] interaction_control_mode~%~%# All 6 values in force and impedance parameter vectors have to be filled,~%# If a control mode is not used in a Cartesian dimension,~%# the corresponding parameters will be ignored.~%~%## Parameters for Constrained Zero-G Behaviors~%# Allow for arbitrary rotational displacements from the current orientation~%# for constrained zero-G. Setting 'rotations_for_constrained_zeroG = True'~%# will disable the rotational stiffness field which limits rotational~%# displacements to +/- 82.5 degree.~%# NOTE: it will be only enabled for a stationary reference orientation~%bool rotations_for_constrained_zeroG~%~%================================================================================~%MSG: intera_motion_msgs/TrackingOptions~%# Minimum trajectory tracking time rate:  (default = less than one)~%bool     use_min_time_rate~%float64  min_time_rate~%~%# Maximum trajectory tracking time rate:  (1.0 = real-time = default)~%bool     use_max_time_rate~%float64  max_time_rate~%~%# Angular error tolerance at final point on trajectory (rad)~%float64[] goal_joint_tolerance~%~%# Time for the controller to settle within joint tolerances at the goal (sec)~%bool     use_settling_time_at_goal~%float64  settling_time_at_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_options))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory
    (cl:cons ':label (label msg))
    (cl:cons ':joint_names (joint_names msg))
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':trajectory_options (trajectory_options msg))
))
