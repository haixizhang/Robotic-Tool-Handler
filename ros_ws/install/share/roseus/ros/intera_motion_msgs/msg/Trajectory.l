;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::Trajectory)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'Trajectory (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::TRAJECTORY")
  (make-package "INTERA_MOTION_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(defclass intera_motion_msgs::Trajectory
  :super ros::object
  :slots (_label _joint_names _waypoints _trajectory_options ))

(defmethod intera_motion_msgs::Trajectory
  (:init
   (&key
    ((:label __label) "")
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:waypoints __waypoints) ())
    ((:trajectory_options __trajectory_options) (instance intera_motion_msgs::TrajectoryOptions :init))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _joint_names __joint_names)
   (setq _waypoints __waypoints)
   (setq _trajectory_options __trajectory_options)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:trajectory_options
   (&rest __trajectory_options)
   (if (keywordp (car __trajectory_options))
       (send* _trajectory_options __trajectory_options)
     (progn
       (if __trajectory_options (setq _trajectory_options (car __trajectory_options)))
       _trajectory_options)))
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; intera_motion_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; intera_motion_msgs/TrajectoryOptions _trajectory_options
    (send _trajectory_options :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; intera_motion_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; intera_motion_msgs/TrajectoryOptions _trajectory_options
       (send _trajectory_options :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; intera_motion_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance intera_motion_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; intera_motion_msgs/TrajectoryOptions _trajectory_options
     (send _trajectory_options :deserialize buf ptr-) (incf ptr- (send _trajectory_options :serialization-length))
   ;;
   self)
  )

(setf (get intera_motion_msgs::Trajectory :md5sum-) "9ab7e6d17ba67f0a6b00ab5f35f6d93e")
(setf (get intera_motion_msgs::Trajectory :datatype-) "intera_motion_msgs/Trajectory")
(setf (get intera_motion_msgs::Trajectory :definition-)
      "# Representation of a trajectory used by the engine and motion controller.

# optional label
string label

# Array of joint names that correspond to the waypoint joint_positions
string[] joint_names

# Array of waypoints that comprise the trajectory
Waypoint[] waypoints

# Trajectory level options
TrajectoryOptions trajectory_options
================================================================================
MSG: intera_motion_msgs/Waypoint
# Representation of a waypoint used by the motion controller

# Desired joint positions
# For Cartesian segments, the joint positions are used as nullspace biases
float64[] joint_positions

# Name of the endpoint that is currently active
string active_endpoint

# Cartesian pose
# This is not used in trajectories using joint interpolation
geometry_msgs/PoseStamped pose

# Waypoint specific options
# Default values will be used if not set
# All waypoint options are applied to the segment moving to that waypoint
WaypointOptions options

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: intera_motion_msgs/WaypointOptions
# Optional waypoint label
string label

# Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)
float64 max_joint_speed_ratio

# Slowdown heuristic is triggered if tracking error exceeds tolerances - radians
float64[] joint_tolerances

# Maximum accelerations for each joint (only for joint paths) - rad/s^2.
float64[] max_joint_accel


###########################################################
# The remaining parameters only apply to Cartesian paths

# Maximum linear speed of endpoint - m/s
float64 max_linear_speed

# Maximum linear acceleration of endpoint - m/s^2
float64 max_linear_accel

# Maximum rotational speed of endpoint - rad/s
float64 max_rotational_speed

# Maximum rotational acceleration of endpoint - rad/s^2
float64 max_rotational_accel

# Used for smoothing corners for continuous motion - m
# The distance from the waypoint to where the curve starts while blending from
# one straight line segment to the next.
# Larger distance:  trajectory passes farther from the waypoint at a higher speed
# Smaller distance:  trajectory passes closer to the waypoint at a lower speed
# Zero distance:  trajectory passes through the waypoint at zero speed
float64 corner_distance

================================================================================
MSG: intera_motion_msgs/TrajectoryOptions
# Trajectory interpolation type
string CARTESIAN=CARTESIAN
string JOINT=JOINT
string interpolation_type

# True if the trajectory uses interaction control, false for position control.
bool interaction_control

# Interaction control parameters
intera_core_msgs/InteractionControlCommand interaction_params

# Allow small joint adjustments at the beginning of Cartesian trajectories.
# Set to false for 'small' motions.
bool nso_start_offset_allowed

# Check the offset at the end of a Cartesian trajectory from the final waypoint nullspace goal.
bool nso_check_end_offset

# Options for the tracking controller:
TrackingOptions tracking_options

# Desired trajectory end time, ROS timestamp
time end_time

# The rate in seconds that the path is interpolated and returned back to the user
# No interpolation will happen if set to zero
float64 path_interpolation_step

================================================================================
MSG: intera_core_msgs/InteractionControlCommand
# Message sets the interaction (impedance/force) control on or off
# It also contains desired cartesian stiffness K, damping D, and force values

Header header
bool      interaction_control_active

## Cartesian Impedance Control Parameters
# Stiffness units are (N/m) for first 3 and (Nm/rad) for second 3 values
float64[] K_impedance
# Force certain directions to have maximum possible impedance for a given pose
bool[] max_impedance
# Damping units are (Ns/m) for first 3 and (Nms/rad) for the second 3 values
float64[] D_impedance
# Joint Nullspace stiffness units are in (Nm/rad) (length == number of joints)
float64[] K_nullspace

## Parameters for force control or impedance control with force limit
# If in force mode, this is the vector of desired forces/torques
# to be regulated in (N) and (Nm)
# If in impedance with force limit mode, this vector specifies the
# magnitude of forces/torques (N and Nm) that the command will not exceed.
float64[] force_command

## Desired frame
geometry_msgs/Pose interaction_frame
string endpoint_name
# True if impedance and force commands are defined in endpoint frame
bool in_endpoint_frame

# Set to true to disable damping during force control. Damping is used
# to slow down robot motion during force control in free space.
# Option included for SDK users to disable damping in force control
bool disable_damping_in_force_control

# Set to true to disable reference resetting. Reference resetting is
# used when interaction parameters change, in order to avoid jumps/jerks.
# Option included for SDK users to disable reference resetting if the
# intention is to change interaction parameters.
bool disable_reference_resetting

## Mode Selection Parameters
# The possible interaction control modes are:
# Impedance mode: implements desired endpoint stiffness and damping.
uint8 IMPEDANCE_MODE=1
# Force mode: applies force/torque in the specified dimensions.
uint8 FORCE_MODE=2
# Impedance with force limit: impedance control while ensuring the commanded
# forces/torques do not exceed force_command.
uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3
# Force with motion bounds: force control while ensuring the current
# pose/velocities do not exceed forceMotionThreshold (currenetly defined in yaml)
uint8 FORCE_WITH_MOTION_LIMIT_MODE=4

# Specifies the interaction control mode for each Cartesian dimension (6)
uint8[] interaction_control_mode

# All 6 values in force and impedance parameter vectors have to be filled,
# If a control mode is not used in a Cartesian dimension,
# the corresponding parameters will be ignored.

## Parameters for Constrained Zero-G Behaviors
# Allow for arbitrary rotational displacements from the current orientation
# for constrained zero-G. Setting 'rotations_for_constrained_zeroG = True'
# will disable the rotational stiffness field which limits rotational
# displacements to +/- 82.5 degree.
# NOTE: it will be only enabled for a stationary reference orientation
bool rotations_for_constrained_zeroG

================================================================================
MSG: intera_motion_msgs/TrackingOptions
# Minimum trajectory tracking time rate:  (default = less than one)
bool     use_min_time_rate
float64  min_time_rate

# Maximum trajectory tracking time rate:  (1.0 = real-time = default)
bool     use_max_time_rate
float64  max_time_rate

# Angular error tolerance at final point on trajectory (rad)
float64[] goal_joint_tolerance

# Time for the controller to settle within joint tolerances at the goal (sec)
bool     use_settling_time_at_goal
float64  settling_time_at_goal

")



(provide :intera_motion_msgs/Trajectory "9ab7e6d17ba67f0a6b00ab5f35f6d93e")


