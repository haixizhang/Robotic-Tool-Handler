;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::InteractionControlState)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'InteractionControlState (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::INTERACTIONCONTROLSTATE")
  (make-package "INTERA_CORE_MSGS::INTERACTIONCONTROLSTATE"))

(in-package "ROS")
;;//! \htmlinclude InteractionControlState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass intera_core_msgs::InteractionControlState
  :super ros::object
  :slots (_header _interaction_control_active _K_impedance _D_impedance _endpoint_force_command _endpoint_name _in_endpoint_frame _disable_damping_in_force_control _disable_reference_resetting _rotations_for_constrained_zeroG ))

(defmethod intera_core_msgs::InteractionControlState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:interaction_control_active __interaction_control_active) nil)
    ((:K_impedance __K_impedance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:D_impedance __D_impedance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:endpoint_force_command __endpoint_force_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:endpoint_name __endpoint_name) "")
    ((:in_endpoint_frame __in_endpoint_frame) nil)
    ((:disable_damping_in_force_control __disable_damping_in_force_control) nil)
    ((:disable_reference_resetting __disable_reference_resetting) nil)
    ((:rotations_for_constrained_zeroG __rotations_for_constrained_zeroG) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _interaction_control_active __interaction_control_active)
   (setq _K_impedance __K_impedance)
   (setq _D_impedance __D_impedance)
   (setq _endpoint_force_command __endpoint_force_command)
   (setq _endpoint_name (string __endpoint_name))
   (setq _in_endpoint_frame __in_endpoint_frame)
   (setq _disable_damping_in_force_control __disable_damping_in_force_control)
   (setq _disable_reference_resetting __disable_reference_resetting)
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
  (:D_impedance
   (&optional __D_impedance)
   (if __D_impedance (setq _D_impedance __D_impedance)) _D_impedance)
  (:endpoint_force_command
   (&optional __endpoint_force_command)
   (if __endpoint_force_command (setq _endpoint_force_command __endpoint_force_command)) _endpoint_force_command)
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
    ;; float64[] _D_impedance
    (* 8    (length _D_impedance)) 4
    ;; float64[] _endpoint_force_command
    (* 8    (length _endpoint_force_command)) 4
    ;; string _endpoint_name
    4 (length _endpoint_name)
    ;; bool _in_endpoint_frame
    1
    ;; bool _disable_damping_in_force_control
    1
    ;; bool _disable_reference_resetting
    1
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
     ;; float64[] _D_impedance
     (write-long (length _D_impedance) s)
     (dotimes (i (length _D_impedance))
       (sys::poke (elt _D_impedance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _endpoint_force_command
     (write-long (length _endpoint_force_command) s)
     (dotimes (i (length _endpoint_force_command))
       (sys::poke (elt _endpoint_force_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _endpoint_name
       (write-long (length _endpoint_name) s) (princ _endpoint_name s)
     ;; bool _in_endpoint_frame
       (if _in_endpoint_frame (write-byte -1 s) (write-byte 0 s))
     ;; bool _disable_damping_in_force_control
       (if _disable_damping_in_force_control (write-byte -1 s) (write-byte 0 s))
     ;; bool _disable_reference_resetting
       (if _disable_reference_resetting (write-byte -1 s) (write-byte 0 s))
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
   ;; float64[] _D_impedance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _D_impedance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _D_impedance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _endpoint_force_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _endpoint_force_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _endpoint_force_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _endpoint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _endpoint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _in_endpoint_frame
     (setq _in_endpoint_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disable_damping_in_force_control
     (setq _disable_damping_in_force_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disable_reference_resetting
     (setq _disable_reference_resetting (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rotations_for_constrained_zeroG
     (setq _rotations_for_constrained_zeroG (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get intera_core_msgs::InteractionControlState :md5sum-) "f3fbd4a2356cb48da2df759db65614d8")
(setf (get intera_core_msgs::InteractionControlState :datatype-) "intera_core_msgs/InteractionControlState")
(setf (get intera_core_msgs::InteractionControlState :definition-)
      "## InteractionControlState.msg ##
# Internal state of the interaction controller including
# whether the controller is active, current impedence parameters,
# and the commanded endpoint forces by the interaction controller

Header header

bool      interaction_control_active

## Impedance Control Parameters
float64[] K_impedance
float64[] D_impedance

## Force Control Parameters
# Vector of forces (wrench) (N and Nm) commanded by the interaction controller
# for the endpoint.
float64[] endpoint_force_command

string endpoint_name
bool in_endpoint_frame
bool disable_damping_in_force_control
bool disable_reference_resetting

## Parameters for Constrained Zero-G Behaviors
# Please refer to InteractionControlCommand.msg for more details
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

")



(provide :intera_core_msgs/InteractionControlState "f3fbd4a2356cb48da2df759db65614d8")


