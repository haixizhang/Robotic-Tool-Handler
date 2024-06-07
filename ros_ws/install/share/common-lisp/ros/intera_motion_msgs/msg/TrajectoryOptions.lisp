; Auto-generated. Do not edit!


(cl:in-package intera_motion_msgs-msg)


;//! \htmlinclude TrajectoryOptions.msg.html

(cl:defclass <TrajectoryOptions> (roslisp-msg-protocol:ros-message)
  ((interpolation_type
    :reader interpolation_type
    :initarg :interpolation_type
    :type cl:string
    :initform "")
   (interaction_control
    :reader interaction_control
    :initarg :interaction_control
    :type cl:boolean
    :initform cl:nil)
   (interaction_params
    :reader interaction_params
    :initarg :interaction_params
    :type intera_core_msgs-msg:InteractionControlCommand
    :initform (cl:make-instance 'intera_core_msgs-msg:InteractionControlCommand))
   (nso_start_offset_allowed
    :reader nso_start_offset_allowed
    :initarg :nso_start_offset_allowed
    :type cl:boolean
    :initform cl:nil)
   (nso_check_end_offset
    :reader nso_check_end_offset
    :initarg :nso_check_end_offset
    :type cl:boolean
    :initform cl:nil)
   (tracking_options
    :reader tracking_options
    :initarg :tracking_options
    :type intera_motion_msgs-msg:TrackingOptions
    :initform (cl:make-instance 'intera_motion_msgs-msg:TrackingOptions))
   (end_time
    :reader end_time
    :initarg :end_time
    :type cl:real
    :initform 0)
   (path_interpolation_step
    :reader path_interpolation_step
    :initarg :path_interpolation_step
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryOptions (<TrajectoryOptions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryOptions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryOptions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_motion_msgs-msg:<TrajectoryOptions> is deprecated: use intera_motion_msgs-msg:TrajectoryOptions instead.")))

(cl:ensure-generic-function 'interpolation_type-val :lambda-list '(m))
(cl:defmethod interpolation_type-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:interpolation_type-val is deprecated.  Use intera_motion_msgs-msg:interpolation_type instead.")
  (interpolation_type m))

(cl:ensure-generic-function 'interaction_control-val :lambda-list '(m))
(cl:defmethod interaction_control-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:interaction_control-val is deprecated.  Use intera_motion_msgs-msg:interaction_control instead.")
  (interaction_control m))

(cl:ensure-generic-function 'interaction_params-val :lambda-list '(m))
(cl:defmethod interaction_params-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:interaction_params-val is deprecated.  Use intera_motion_msgs-msg:interaction_params instead.")
  (interaction_params m))

(cl:ensure-generic-function 'nso_start_offset_allowed-val :lambda-list '(m))
(cl:defmethod nso_start_offset_allowed-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:nso_start_offset_allowed-val is deprecated.  Use intera_motion_msgs-msg:nso_start_offset_allowed instead.")
  (nso_start_offset_allowed m))

(cl:ensure-generic-function 'nso_check_end_offset-val :lambda-list '(m))
(cl:defmethod nso_check_end_offset-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:nso_check_end_offset-val is deprecated.  Use intera_motion_msgs-msg:nso_check_end_offset instead.")
  (nso_check_end_offset m))

(cl:ensure-generic-function 'tracking_options-val :lambda-list '(m))
(cl:defmethod tracking_options-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:tracking_options-val is deprecated.  Use intera_motion_msgs-msg:tracking_options instead.")
  (tracking_options m))

(cl:ensure-generic-function 'end_time-val :lambda-list '(m))
(cl:defmethod end_time-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:end_time-val is deprecated.  Use intera_motion_msgs-msg:end_time instead.")
  (end_time m))

(cl:ensure-generic-function 'path_interpolation_step-val :lambda-list '(m))
(cl:defmethod path_interpolation_step-val ((m <TrajectoryOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:path_interpolation_step-val is deprecated.  Use intera_motion_msgs-msg:path_interpolation_step instead.")
  (path_interpolation_step m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrajectoryOptions>)))
    "Constants for message type '<TrajectoryOptions>"
  '((:CARTESIAN . "CARTESIAN")
    (:JOINT . "JOINT"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrajectoryOptions)))
    "Constants for message type 'TrajectoryOptions"
  '((:CARTESIAN . "CARTESIAN")
    (:JOINT . "JOINT"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryOptions>) ostream)
  "Serializes a message object of type '<TrajectoryOptions>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'interpolation_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'interpolation_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interaction_control) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'interaction_params) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nso_start_offset_allowed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nso_check_end_offset) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracking_options) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'end_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'end_time) (cl:floor (cl:slot-value msg 'end_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'path_interpolation_step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryOptions>) istream)
  "Deserializes a message object of type '<TrajectoryOptions>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interpolation_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'interpolation_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'interaction_control) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'interaction_params) istream)
    (cl:setf (cl:slot-value msg 'nso_start_offset_allowed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'nso_check_end_offset) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracking_options) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'path_interpolation_step) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryOptions>)))
  "Returns string type for a message object of type '<TrajectoryOptions>"
  "intera_motion_msgs/TrajectoryOptions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryOptions)))
  "Returns string type for a message object of type 'TrajectoryOptions"
  "intera_motion_msgs/TrajectoryOptions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryOptions>)))
  "Returns md5sum for a message object of type '<TrajectoryOptions>"
  "d6c6806743ac9695334265046d57235e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryOptions)))
  "Returns md5sum for a message object of type 'TrajectoryOptions"
  "d6c6806743ac9695334265046d57235e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryOptions>)))
  "Returns full string definition for message of type '<TrajectoryOptions>"
  (cl:format cl:nil "# Trajectory interpolation type~%string CARTESIAN=CARTESIAN~%string JOINT=JOINT~%string interpolation_type~%~%# True if the trajectory uses interaction control, false for position control.~%bool interaction_control~%~%# Interaction control parameters~%intera_core_msgs/InteractionControlCommand interaction_params~%~%# Allow small joint adjustments at the beginning of Cartesian trajectories.~%# Set to false for 'small' motions.~%bool nso_start_offset_allowed~%~%# Check the offset at the end of a Cartesian trajectory from the final waypoint nullspace goal.~%bool nso_check_end_offset~%~%# Options for the tracking controller:~%TrackingOptions tracking_options~%~%# Desired trajectory end time, ROS timestamp~%time end_time~%~%# The rate in seconds that the path is interpolated and returned back to the user~%# No interpolation will happen if set to zero~%float64 path_interpolation_step~%~%================================================================================~%MSG: intera_core_msgs/InteractionControlCommand~%# Message sets the interaction (impedance/force) control on or off~%# It also contains desired cartesian stiffness K, damping D, and force values~%~%Header header~%bool      interaction_control_active~%~%## Cartesian Impedance Control Parameters~%# Stiffness units are (N/m) for first 3 and (Nm/rad) for second 3 values~%float64[] K_impedance~%# Force certain directions to have maximum possible impedance for a given pose~%bool[] max_impedance~%# Damping units are (Ns/m) for first 3 and (Nms/rad) for the second 3 values~%float64[] D_impedance~%# Joint Nullspace stiffness units are in (Nm/rad) (length == number of joints)~%float64[] K_nullspace~%~%## Parameters for force control or impedance control with force limit~%# If in force mode, this is the vector of desired forces/torques~%# to be regulated in (N) and (Nm)~%# If in impedance with force limit mode, this vector specifies the~%# magnitude of forces/torques (N and Nm) that the command will not exceed.~%float64[] force_command~%~%## Desired frame~%geometry_msgs/Pose interaction_frame~%string endpoint_name~%# True if impedance and force commands are defined in endpoint frame~%bool in_endpoint_frame~%~%# Set to true to disable damping during force control. Damping is used~%# to slow down robot motion during force control in free space.~%# Option included for SDK users to disable damping in force control~%bool disable_damping_in_force_control~%~%# Set to true to disable reference resetting. Reference resetting is~%# used when interaction parameters change, in order to avoid jumps/jerks.~%# Option included for SDK users to disable reference resetting if the~%# intention is to change interaction parameters.~%bool disable_reference_resetting~%~%## Mode Selection Parameters~%# The possible interaction control modes are:~%# Impedance mode: implements desired endpoint stiffness and damping.~%uint8 IMPEDANCE_MODE=1~%# Force mode: applies force/torque in the specified dimensions.~%uint8 FORCE_MODE=2~%# Impedance with force limit: impedance control while ensuring the commanded~%# forces/torques do not exceed force_command.~%uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3~%# Force with motion bounds: force control while ensuring the current~%# pose/velocities do not exceed forceMotionThreshold (currenetly defined in yaml)~%uint8 FORCE_WITH_MOTION_LIMIT_MODE=4~%~%# Specifies the interaction control mode for each Cartesian dimension (6)~%uint8[] interaction_control_mode~%~%# All 6 values in force and impedance parameter vectors have to be filled,~%# If a control mode is not used in a Cartesian dimension,~%# the corresponding parameters will be ignored.~%~%## Parameters for Constrained Zero-G Behaviors~%# Allow for arbitrary rotational displacements from the current orientation~%# for constrained zero-G. Setting 'rotations_for_constrained_zeroG = True'~%# will disable the rotational stiffness field which limits rotational~%# displacements to +/- 82.5 degree.~%# NOTE: it will be only enabled for a stationary reference orientation~%bool rotations_for_constrained_zeroG~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: intera_motion_msgs/TrackingOptions~%# Minimum trajectory tracking time rate:  (default = less than one)~%bool     use_min_time_rate~%float64  min_time_rate~%~%# Maximum trajectory tracking time rate:  (1.0 = real-time = default)~%bool     use_max_time_rate~%float64  max_time_rate~%~%# Angular error tolerance at final point on trajectory (rad)~%float64[] goal_joint_tolerance~%~%# Time for the controller to settle within joint tolerances at the goal (sec)~%bool     use_settling_time_at_goal~%float64  settling_time_at_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryOptions)))
  "Returns full string definition for message of type 'TrajectoryOptions"
  (cl:format cl:nil "# Trajectory interpolation type~%string CARTESIAN=CARTESIAN~%string JOINT=JOINT~%string interpolation_type~%~%# True if the trajectory uses interaction control, false for position control.~%bool interaction_control~%~%# Interaction control parameters~%intera_core_msgs/InteractionControlCommand interaction_params~%~%# Allow small joint adjustments at the beginning of Cartesian trajectories.~%# Set to false for 'small' motions.~%bool nso_start_offset_allowed~%~%# Check the offset at the end of a Cartesian trajectory from the final waypoint nullspace goal.~%bool nso_check_end_offset~%~%# Options for the tracking controller:~%TrackingOptions tracking_options~%~%# Desired trajectory end time, ROS timestamp~%time end_time~%~%# The rate in seconds that the path is interpolated and returned back to the user~%# No interpolation will happen if set to zero~%float64 path_interpolation_step~%~%================================================================================~%MSG: intera_core_msgs/InteractionControlCommand~%# Message sets the interaction (impedance/force) control on or off~%# It also contains desired cartesian stiffness K, damping D, and force values~%~%Header header~%bool      interaction_control_active~%~%## Cartesian Impedance Control Parameters~%# Stiffness units are (N/m) for first 3 and (Nm/rad) for second 3 values~%float64[] K_impedance~%# Force certain directions to have maximum possible impedance for a given pose~%bool[] max_impedance~%# Damping units are (Ns/m) for first 3 and (Nms/rad) for the second 3 values~%float64[] D_impedance~%# Joint Nullspace stiffness units are in (Nm/rad) (length == number of joints)~%float64[] K_nullspace~%~%## Parameters for force control or impedance control with force limit~%# If in force mode, this is the vector of desired forces/torques~%# to be regulated in (N) and (Nm)~%# If in impedance with force limit mode, this vector specifies the~%# magnitude of forces/torques (N and Nm) that the command will not exceed.~%float64[] force_command~%~%## Desired frame~%geometry_msgs/Pose interaction_frame~%string endpoint_name~%# True if impedance and force commands are defined in endpoint frame~%bool in_endpoint_frame~%~%# Set to true to disable damping during force control. Damping is used~%# to slow down robot motion during force control in free space.~%# Option included for SDK users to disable damping in force control~%bool disable_damping_in_force_control~%~%# Set to true to disable reference resetting. Reference resetting is~%# used when interaction parameters change, in order to avoid jumps/jerks.~%# Option included for SDK users to disable reference resetting if the~%# intention is to change interaction parameters.~%bool disable_reference_resetting~%~%## Mode Selection Parameters~%# The possible interaction control modes are:~%# Impedance mode: implements desired endpoint stiffness and damping.~%uint8 IMPEDANCE_MODE=1~%# Force mode: applies force/torque in the specified dimensions.~%uint8 FORCE_MODE=2~%# Impedance with force limit: impedance control while ensuring the commanded~%# forces/torques do not exceed force_command.~%uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3~%# Force with motion bounds: force control while ensuring the current~%# pose/velocities do not exceed forceMotionThreshold (currenetly defined in yaml)~%uint8 FORCE_WITH_MOTION_LIMIT_MODE=4~%~%# Specifies the interaction control mode for each Cartesian dimension (6)~%uint8[] interaction_control_mode~%~%# All 6 values in force and impedance parameter vectors have to be filled,~%# If a control mode is not used in a Cartesian dimension,~%# the corresponding parameters will be ignored.~%~%## Parameters for Constrained Zero-G Behaviors~%# Allow for arbitrary rotational displacements from the current orientation~%# for constrained zero-G. Setting 'rotations_for_constrained_zeroG = True'~%# will disable the rotational stiffness field which limits rotational~%# displacements to +/- 82.5 degree.~%# NOTE: it will be only enabled for a stationary reference orientation~%bool rotations_for_constrained_zeroG~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: intera_motion_msgs/TrackingOptions~%# Minimum trajectory tracking time rate:  (default = less than one)~%bool     use_min_time_rate~%float64  min_time_rate~%~%# Maximum trajectory tracking time rate:  (1.0 = real-time = default)~%bool     use_max_time_rate~%float64  max_time_rate~%~%# Angular error tolerance at final point on trajectory (rad)~%float64[] goal_joint_tolerance~%~%# Time for the controller to settle within joint tolerances at the goal (sec)~%bool     use_settling_time_at_goal~%float64  settling_time_at_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryOptions>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'interpolation_type))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'interaction_params))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracking_options))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryOptions>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryOptions
    (cl:cons ':interpolation_type (interpolation_type msg))
    (cl:cons ':interaction_control (interaction_control msg))
    (cl:cons ':interaction_params (interaction_params msg))
    (cl:cons ':nso_start_offset_allowed (nso_start_offset_allowed msg))
    (cl:cons ':nso_check_end_offset (nso_check_end_offset msg))
    (cl:cons ':tracking_options (tracking_options msg))
    (cl:cons ':end_time (end_time msg))
    (cl:cons ':path_interpolation_step (path_interpolation_step msg))
))
