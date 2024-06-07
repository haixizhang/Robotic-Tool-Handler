; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude InteractionControlState.msg.html

(cl:defclass <InteractionControlState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (interaction_control_active
    :reader interaction_control_active
    :initarg :interaction_control_active
    :type cl:boolean
    :initform cl:nil)
   (K_impedance
    :reader K_impedance
    :initarg :K_impedance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (D_impedance
    :reader D_impedance
    :initarg :D_impedance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (endpoint_force_command
    :reader endpoint_force_command
    :initarg :endpoint_force_command
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (endpoint_name
    :reader endpoint_name
    :initarg :endpoint_name
    :type cl:string
    :initform "")
   (in_endpoint_frame
    :reader in_endpoint_frame
    :initarg :in_endpoint_frame
    :type cl:boolean
    :initform cl:nil)
   (disable_damping_in_force_control
    :reader disable_damping_in_force_control
    :initarg :disable_damping_in_force_control
    :type cl:boolean
    :initform cl:nil)
   (disable_reference_resetting
    :reader disable_reference_resetting
    :initarg :disable_reference_resetting
    :type cl:boolean
    :initform cl:nil)
   (rotations_for_constrained_zeroG
    :reader rotations_for_constrained_zeroG
    :initarg :rotations_for_constrained_zeroG
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InteractionControlState (<InteractionControlState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InteractionControlState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InteractionControlState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<InteractionControlState> is deprecated: use intera_core_msgs-msg:InteractionControlState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:header-val is deprecated.  Use intera_core_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'interaction_control_active-val :lambda-list '(m))
(cl:defmethod interaction_control_active-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:interaction_control_active-val is deprecated.  Use intera_core_msgs-msg:interaction_control_active instead.")
  (interaction_control_active m))

(cl:ensure-generic-function 'K_impedance-val :lambda-list '(m))
(cl:defmethod K_impedance-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:K_impedance-val is deprecated.  Use intera_core_msgs-msg:K_impedance instead.")
  (K_impedance m))

(cl:ensure-generic-function 'D_impedance-val :lambda-list '(m))
(cl:defmethod D_impedance-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:D_impedance-val is deprecated.  Use intera_core_msgs-msg:D_impedance instead.")
  (D_impedance m))

(cl:ensure-generic-function 'endpoint_force_command-val :lambda-list '(m))
(cl:defmethod endpoint_force_command-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:endpoint_force_command-val is deprecated.  Use intera_core_msgs-msg:endpoint_force_command instead.")
  (endpoint_force_command m))

(cl:ensure-generic-function 'endpoint_name-val :lambda-list '(m))
(cl:defmethod endpoint_name-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:endpoint_name-val is deprecated.  Use intera_core_msgs-msg:endpoint_name instead.")
  (endpoint_name m))

(cl:ensure-generic-function 'in_endpoint_frame-val :lambda-list '(m))
(cl:defmethod in_endpoint_frame-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:in_endpoint_frame-val is deprecated.  Use intera_core_msgs-msg:in_endpoint_frame instead.")
  (in_endpoint_frame m))

(cl:ensure-generic-function 'disable_damping_in_force_control-val :lambda-list '(m))
(cl:defmethod disable_damping_in_force_control-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:disable_damping_in_force_control-val is deprecated.  Use intera_core_msgs-msg:disable_damping_in_force_control instead.")
  (disable_damping_in_force_control m))

(cl:ensure-generic-function 'disable_reference_resetting-val :lambda-list '(m))
(cl:defmethod disable_reference_resetting-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:disable_reference_resetting-val is deprecated.  Use intera_core_msgs-msg:disable_reference_resetting instead.")
  (disable_reference_resetting m))

(cl:ensure-generic-function 'rotations_for_constrained_zeroG-val :lambda-list '(m))
(cl:defmethod rotations_for_constrained_zeroG-val ((m <InteractionControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:rotations_for_constrained_zeroG-val is deprecated.  Use intera_core_msgs-msg:rotations_for_constrained_zeroG instead.")
  (rotations_for_constrained_zeroG m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InteractionControlState>) ostream)
  "Serializes a message object of type '<InteractionControlState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interaction_control_active) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'K_impedance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'K_impedance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'D_impedance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'D_impedance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'endpoint_force_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'endpoint_force_command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'endpoint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'endpoint_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_endpoint_frame) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_damping_in_force_control) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_reference_resetting) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotations_for_constrained_zeroG) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InteractionControlState>) istream)
  "Deserializes a message object of type '<InteractionControlState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'interaction_control_active) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'K_impedance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'K_impedance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'D_impedance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'D_impedance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'endpoint_force_command) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'endpoint_force_command)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'endpoint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'endpoint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'in_endpoint_frame) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'disable_damping_in_force_control) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'disable_reference_resetting) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rotations_for_constrained_zeroG) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InteractionControlState>)))
  "Returns string type for a message object of type '<InteractionControlState>"
  "intera_core_msgs/InteractionControlState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InteractionControlState)))
  "Returns string type for a message object of type 'InteractionControlState"
  "intera_core_msgs/InteractionControlState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InteractionControlState>)))
  "Returns md5sum for a message object of type '<InteractionControlState>"
  "f3fbd4a2356cb48da2df759db65614d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InteractionControlState)))
  "Returns md5sum for a message object of type 'InteractionControlState"
  "f3fbd4a2356cb48da2df759db65614d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InteractionControlState>)))
  "Returns full string definition for message of type '<InteractionControlState>"
  (cl:format cl:nil "## InteractionControlState.msg ##~%# Internal state of the interaction controller including~%# whether the controller is active, current impedence parameters,~%# and the commanded endpoint forces by the interaction controller~%~%Header header~%~%bool      interaction_control_active~%~%## Impedance Control Parameters~%float64[] K_impedance~%float64[] D_impedance~%~%## Force Control Parameters~%# Vector of forces (wrench) (N and Nm) commanded by the interaction controller~%# for the endpoint.~%float64[] endpoint_force_command~%~%string endpoint_name~%bool in_endpoint_frame~%bool disable_damping_in_force_control~%bool disable_reference_resetting~%~%## Parameters for Constrained Zero-G Behaviors~%# Please refer to InteractionControlCommand.msg for more details~%bool rotations_for_constrained_zeroG~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InteractionControlState)))
  "Returns full string definition for message of type 'InteractionControlState"
  (cl:format cl:nil "## InteractionControlState.msg ##~%# Internal state of the interaction controller including~%# whether the controller is active, current impedence parameters,~%# and the commanded endpoint forces by the interaction controller~%~%Header header~%~%bool      interaction_control_active~%~%## Impedance Control Parameters~%float64[] K_impedance~%float64[] D_impedance~%~%## Force Control Parameters~%# Vector of forces (wrench) (N and Nm) commanded by the interaction controller~%# for the endpoint.~%float64[] endpoint_force_command~%~%string endpoint_name~%bool in_endpoint_frame~%bool disable_damping_in_force_control~%bool disable_reference_resetting~%~%## Parameters for Constrained Zero-G Behaviors~%# Please refer to InteractionControlCommand.msg for more details~%bool rotations_for_constrained_zeroG~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InteractionControlState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'K_impedance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'D_impedance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'endpoint_force_command) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'endpoint_name))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InteractionControlState>))
  "Converts a ROS message object to a list"
  (cl:list 'InteractionControlState
    (cl:cons ':header (header msg))
    (cl:cons ':interaction_control_active (interaction_control_active msg))
    (cl:cons ':K_impedance (K_impedance msg))
    (cl:cons ':D_impedance (D_impedance msg))
    (cl:cons ':endpoint_force_command (endpoint_force_command msg))
    (cl:cons ':endpoint_name (endpoint_name msg))
    (cl:cons ':in_endpoint_frame (in_endpoint_frame msg))
    (cl:cons ':disable_damping_in_force_control (disable_damping_in_force_control msg))
    (cl:cons ':disable_reference_resetting (disable_reference_resetting msg))
    (cl:cons ':rotations_for_constrained_zeroG (rotations_for_constrained_zeroG msg))
))
