;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::TrajectoryOptions)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'TrajectoryOptions (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::TRAJECTORYOPTIONS")
  (make-package "INTERA_MOTION_MSGS::TRAJECTORYOPTIONS"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryOptions.msg.html
(if (not (find-package "INTERA_CORE_MSGS"))
  (ros::roseus-add-msgs "intera_core_msgs"))


(intern "*CARTESIAN*" (find-package "INTERA_MOTION_MSGS::TRAJECTORYOPTIONS"))
(shadow '*CARTESIAN* (find-package "INTERA_MOTION_MSGS::TRAJECTORYOPTIONS"))
(defconstant intera_motion_msgs::TrajectoryOptions::*CARTESIAN* "CARTESIAN")
(intern "*JOINT*" (find-package "INTERA_MOTION_MSGS::TRAJECTORYOPTIONS"))
(shadow '*JOINT* (find-package "INTERA_MOTION_MSGS::TRAJECTORYOPTIONS"))
(defconstant intera_motion_msgs::TrajectoryOptions::*JOINT* "JOINT")

(defun intera_motion_msgs::TrajectoryOptions-to-symbol (const)
  (cond
        (t nil)))

(defclass intera_motion_msgs::TrajectoryOptions
  :super ros::object
  :slots (_interpolation_type _interaction_control _interaction_params _nso_start_offset_allowed _nso_check_end_offset _tracking_options _end_time _path_interpolation_step ))

(defmethod intera_motion_msgs::TrajectoryOptions
  (:init
   (&key
    ((:interpolation_type __interpolation_type) "")
    ((:interaction_control __interaction_control) nil)
    ((:interaction_params __interaction_params) (instance intera_core_msgs::InteractionControlCommand :init))
    ((:nso_start_offset_allowed __nso_start_offset_allowed) nil)
    ((:nso_check_end_offset __nso_check_end_offset) nil)
    ((:tracking_options __tracking_options) (instance intera_motion_msgs::TrackingOptions :init))
    ((:end_time __end_time) (instance ros::time :init))
    ((:path_interpolation_step __path_interpolation_step) 0.0)
    )
   (send-super :init)
   (setq _interpolation_type (string __interpolation_type))
   (setq _interaction_control __interaction_control)
   (setq _interaction_params __interaction_params)
   (setq _nso_start_offset_allowed __nso_start_offset_allowed)
   (setq _nso_check_end_offset __nso_check_end_offset)
   (setq _tracking_options __tracking_options)
   (setq _end_time __end_time)
   (setq _path_interpolation_step (float __path_interpolation_step))
   self)
  (:interpolation_type
   (&optional __interpolation_type)
   (if __interpolation_type (setq _interpolation_type __interpolation_type)) _interpolation_type)
  (:interaction_control
   (&optional (__interaction_control :null))
   (if (not (eq __interaction_control :null)) (setq _interaction_control __interaction_control)) _interaction_control)
  (:interaction_params
   (&rest __interaction_params)
   (if (keywordp (car __interaction_params))
       (send* _interaction_params __interaction_params)
     (progn
       (if __interaction_params (setq _interaction_params (car __interaction_params)))
       _interaction_params)))
  (:nso_start_offset_allowed
   (&optional (__nso_start_offset_allowed :null))
   (if (not (eq __nso_start_offset_allowed :null)) (setq _nso_start_offset_allowed __nso_start_offset_allowed)) _nso_start_offset_allowed)
  (:nso_check_end_offset
   (&optional (__nso_check_end_offset :null))
   (if (not (eq __nso_check_end_offset :null)) (setq _nso_check_end_offset __nso_check_end_offset)) _nso_check_end_offset)
  (:tracking_options
   (&rest __tracking_options)
   (if (keywordp (car __tracking_options))
       (send* _tracking_options __tracking_options)
     (progn
       (if __tracking_options (setq _tracking_options (car __tracking_options)))
       _tracking_options)))
  (:end_time
   (&optional __end_time)
   (if __end_time (setq _end_time __end_time)) _end_time)
  (:path_interpolation_step
   (&optional __path_interpolation_step)
   (if __path_interpolation_step (setq _path_interpolation_step __path_interpolation_step)) _path_interpolation_step)
  (:serialization-length
   ()
   (+
    ;; string _interpolation_type
    4 (length _interpolation_type)
    ;; bool _interaction_control
    1
    ;; intera_core_msgs/InteractionControlCommand _interaction_params
    (send _interaction_params :serialization-length)
    ;; bool _nso_start_offset_allowed
    1
    ;; bool _nso_check_end_offset
    1
    ;; intera_motion_msgs/TrackingOptions _tracking_options
    (send _tracking_options :serialization-length)
    ;; time _end_time
    8
    ;; float64 _path_interpolation_step
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _interpolation_type
       (write-long (length _interpolation_type) s) (princ _interpolation_type s)
     ;; bool _interaction_control
       (if _interaction_control (write-byte -1 s) (write-byte 0 s))
     ;; intera_core_msgs/InteractionControlCommand _interaction_params
       (send _interaction_params :serialize s)
     ;; bool _nso_start_offset_allowed
       (if _nso_start_offset_allowed (write-byte -1 s) (write-byte 0 s))
     ;; bool _nso_check_end_offset
       (if _nso_check_end_offset (write-byte -1 s) (write-byte 0 s))
     ;; intera_motion_msgs/TrackingOptions _tracking_options
       (send _tracking_options :serialize s)
     ;; time _end_time
       (write-long (send _end_time :sec) s) (write-long (send _end_time :nsec) s)
     ;; float64 _path_interpolation_step
       (sys::poke _path_interpolation_step (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _interpolation_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _interpolation_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _interaction_control
     (setq _interaction_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; intera_core_msgs/InteractionControlCommand _interaction_params
     (send _interaction_params :deserialize buf ptr-) (incf ptr- (send _interaction_params :serialization-length))
   ;; bool _nso_start_offset_allowed
     (setq _nso_start_offset_allowed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _nso_check_end_offset
     (setq _nso_check_end_offset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; intera_motion_msgs/TrackingOptions _tracking_options
     (send _tracking_options :deserialize buf ptr-) (incf ptr- (send _tracking_options :serialization-length))
   ;; time _end_time
     (send _end_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _end_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _path_interpolation_step
     (setq _path_interpolation_step (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get intera_motion_msgs::TrajectoryOptions :md5sum-) "d6c6806743ac9695334265046d57235e")
(setf (get intera_motion_msgs::TrajectoryOptions :datatype-) "intera_motion_msgs/TrajectoryOptions")
(setf (get intera_motion_msgs::TrajectoryOptions :definition-)
      "# Trajectory interpolation type
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



(provide :intera_motion_msgs/TrajectoryOptions "d6c6806743ac9695334265046d57235e")


