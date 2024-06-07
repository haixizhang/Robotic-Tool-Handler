;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::InteractionControlCommand)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'InteractionControlCommand (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND")
  (make-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude InteractionControlCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*IMPEDANCE_MODE*" (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND"))
(shadow '*IMPEDANCE_MODE* (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND"))
(defconstant intera_core_msgs::InteractionControlCommand::*IMPEDANCE_MODE* 1)
(intern "*FORCE_MODE*" (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND"))
(shadow '*FORCE_MODE* (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND"))
(defconstant intera_core_msgs::InteractionControlCommand::*FORCE_MODE* 2)
(intern "*IMPEDANCE_WITH_FORCE_LIMIT_MODE*" (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND"))
(shadow '*IMPEDANCE_WITH_FORCE_LIMIT_MODE* (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND"))
(defconstant intera_core_msgs::InteractionControlCommand::*IMPEDANCE_WITH_FORCE_LIMIT_MODE* 3)
(intern "*FORCE_WITH_MOTION_LIMIT_MODE*" (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND"))
(shadow '*FORCE_WITH_MOTION_LIMIT_MODE* (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLCOMMAND"))
(defconstant intera_core_msgs::InteractionControlCommand::*FORCE_WITH_MOTION_LIMIT_MODE* 4)

(defun intera_core_msgs::InteractionControlCommand-to-symbol (const)
  (cond
        ((= const 1) 'intera_core_msgs::InteractionControlCommand::*IMPEDANCE_MODE*)
        ((= const 2) 'intera_core_msgs::InteractionControlCommand::*FORCE_MODE*)
        ((= const 3) 'intera_core_msgs::InteractionControlCommand::*IMPEDANCE_WITH_FORCE_LIMIT_MODE*)
        ((= const 4) 'intera_core_msgs::InteractionControlCommand::*FORCE_WITH_MOTION_LIMIT_MODE*)
        (t nil)))

(defclass intera_core_msgs::InteractionControlCommand
  :super ros::object
  :slots (_header _interaction_control_active _K_impedance _max_impedance _D_impedance _K_nullspace _force_command _interaction_frame _endpoint_name _in_endpoint_frame _disable_damping_in_force_control _disable_reference_resetting _interaction_control_mode _rotations_for_constrained_zeroG ))

(defmethod intera_core_msgs::InteractionControlCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:interaction_control_active __interaction_control_active) nil)
    ((:K_impedance __K_impedance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_impedance __max_impedance) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:D_impedance __D_impedance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:K_nullspace __K_nullspace) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:force_command __force_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:interaction_frame __interaction_frame) (instance geometry_msgs::Pose :init))
    ((:endpoint_name __endpoint_name) "")
    ((:in_endpoint_frame __in_endpoint_frame) nil)
    ((:disable_damping_in_force_control __disable_damping_in_force_control) nil)
    ((:disable_reference_resetting __disable_reference_resetting) nil)
    ((:interaction_control_mode __interaction_control_mode) (make-array 0 :initial-element 0 :element-type :char))
    ((:rotations_for_constrained_zeroG __rotations_for_constrained_zeroG) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _interaction_control_active __interaction_control_active)
   (setq _K_impedance __K_impedance)
   (setq _max_impedance __max_impedance)
   (setq _D_impedance __D_impedance)
   (setq _K_nullspace __K_nullspace)
   (setq _force_command __force_command)
   (setq _interaction_frame __interaction_frame)
   (setq _endpoint_name (string __endpoint_name))
   (setq _in_endpoint_frame __in_endpoint_frame)
   (setq _disable_damping_in_force_control __disable_damping_in_force_control)
   (setq _disable_reference_resetting __disable_reference_resetting)
   (setq _interaction_control_mode __interaction_control_mode)
   (setq _rotations_for_constrained_zeroG __rotations_for_constrained_zeroG)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:interaction_control_active
   (&optional (__interaction_control_active :null))
   (if (not (eq __interaction_control_active :null)) (setq _interaction_control_active __interaction_control_active)) _interaction_control_active)
  (:K_impedance
   (&optional __K_impedance)
   (if __K_impedance (setq _K_impedance __K_impedance)) _K_impedance)
  (:max_impedance
   (&optional __max_impedance)
   (if __max_impedance (setq _max_impedance __max_impedance)) _max_impedance)
  (:D_impedance
   (&optional __D_impedance)
   (if __D_impedance (setq _D_impedance __D_impedance)) _D_impedance)
  (:K_nullspace
   (&optional __K_nullspace)
   (if __K_nullspace (setq _K_nullspace __K_nullspace)) _K_nullspace)
  (:force_command
   (&optional __force_command)
   (if __force_command (setq _force_command __force_command)) _force_command)
  (:interaction_frame
   (&rest __interaction_frame)
   (if (keywordp (car __interaction_frame))
       (send* _interaction_frame __interaction_frame)
     (progn
       (if __interaction_frame (setq _interaction_frame (car __interaction_frame)))
       _interaction_frame)))
  (:endpoint_name
   (&optional __endpoint_name)
   (if __endpoint_name (setq _endpoint_name __endpoint_name)) _endpoint_name)
  (:in_endpoint_frame
   (&optional (__in_endpoint_frame :null))
   (if (not (eq __in_endpoint_frame :null)) (setq _in_endpoint_frame __in_endpoint_frame)) _in_endpoint_frame)
  (:disable_damping_in_force_control
   (&optional (__disable_damping_in_force_control :null))
   (if (not (eq __disable_damping_in_force_control :null)) (setq _disable_damping_in_force_control __disable_damping_in_force_control)) _disable_damping_in_force_control)
  (:disable_reference_resetting
   (&optional (__disable_reference_resetting :null))
   (if (not (eq __disable_reference_resetting :null)) (setq _disable_reference_resetting __disable_reference_resetting)) _disable_reference_resetting)
  (:interaction_control_mode
   (&optional __interaction_control_mode)
   (if __interaction_control_mode (setq _interaction_control_mode __interaction_control_mode)) _interaction_control_mode)
  (:rotations_for_constrained_zeroG
   (&optional (__rotations_for_constrained_zeroG :null))
   (if (not (eq __rotations_for_constrained_zeroG :null)) (setq _rotations_for_constrained_zeroG __rotations_for_constrained_zeroG)) _rotations_for_constrained_zeroG)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _interaction_control_active
    1
    ;; float64[] _K_impedance
    (* 8    (length _K_impedance)) 4
    ;; bool[] _max_impedance
    (* 1    (length _max_impedance)) 4
    ;; float64[] _D_impedance
    (* 8    (length _D_impedance)) 4
    ;; float64[] _K_nullspace
    (* 8    (length _K_nullspace)) 4
    ;; float64[] _force_command
    (* 8    (length _force_command)) 4
    ;; geometry_msgs/Pose _interaction_frame
    (send _interaction_frame :serialization-length)
    ;; string _endpoint_name
    4 (length _endpoint_name)
    ;; bool _in_endpoint_frame
    1
    ;; bool _disable_damping_in_force_control
    1
    ;; bool _disable_reference_resetting
    1
    ;; uint8[] _interaction_control_mode
    (* 1    (length _interaction_control_mode)) 4
    ;; bool _rotations_for_constrained_zeroG
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _interaction_control_active
       (if _interaction_control_active (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _K_impedance
     (write-long (length _K_impedance) s)
     (dotimes (i (length _K_impedance))
       (sys::poke (elt _K_impedance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[] _max_impedance
     (write-long (length _max_impedance) s)
     (dotimes (i (length _max_impedance))
       (if (elt _max_impedance i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float64[] _D_impedance
     (write-long (length _D_impedance) s)
     (dotimes (i (length _D_impedance))
       (sys::poke (elt _D_impedance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _K_nullspace
     (write-long (length _K_nullspace) s)
     (dotimes (i (length _K_nullspace))
       (sys::poke (elt _K_nullspace i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _force_command
     (write-long (length _force_command) s)
     (dotimes (i (length _force_command))
       (sys::poke (elt _force_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Pose _interaction_frame
       (send _interaction_frame :serialize s)
     ;; string _endpoint_name
       (write-long (length _endpoint_name) s) (princ _endpoint_name s)
     ;; bool _in_endpoint_frame
       (if _in_endpoint_frame (write-byte -1 s) (write-byte 0 s))
     ;; bool _disable_damping_in_force_control
       (if _disable_damping_in_force_control (write-byte -1 s) (write-byte 0 s))
     ;; bool _disable_reference_resetting
       (if _disable_reference_resetting (write-byte -1 s) (write-byte 0 s))
     ;; uint8[] _interaction_control_mode
     (write-long (length _interaction_control_mode) s)
     (princ _interaction_control_mode s)
     ;; bool _rotations_for_constrained_zeroG
       (if _rotations_for_constrained_zeroG (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _interaction_control_active
     (setq _interaction_control_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _K_impedance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _K_impedance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _K_impedance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool[] _max_impedance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_impedance (make-list n))
     (dotimes (i n)
     (setf (elt _max_impedance i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float64[] _D_impedance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _D_impedance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _D_impedance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _K_nullspace
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _K_nullspace (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _K_nullspace i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _force_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _force_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Pose _interaction_frame
     (send _interaction_frame :deserialize buf ptr-) (incf ptr- (send _interaction_frame :serialization-length))
   ;; string _endpoint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _endpoint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _in_endpoint_frame
     (setq _in_endpoint_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disable_damping_in_force_control
     (setq _disable_damping_in_force_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disable_reference_resetting
     (setq _disable_reference_resetting (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8[] _interaction_control_mode
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _interaction_control_mode (make-array n :element-type :char))
     (replace _interaction_control_mode buf :start2 ptr-) (incf ptr- n))
   ;; bool _rotations_for_constrained_zeroG
     (setq _rotations_for_constrained_zeroG (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get intera_core_msgs::InteractionControlCommand :md5sum-) "762b5d197d5d786f83741af7fe6261a6")
(setf (get intera_core_msgs::InteractionControlCommand :datatype-) "intera_core_msgs/InteractionControlCommand")
(setf (get intera_core_msgs::InteractionControlCommand :definition-)
      "# Message sets the interaction (impedance/force) control on or off
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

")



(provide :intera_core_msgs/InteractionControlCommand "762b5d197d5d786f83741af7fe6261a6")


