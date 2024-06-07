; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude InteractionControlCommand.msg.html

(cl:defclass <InteractionControlCommand> (roslisp-msg-protocol:ros-message)
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
   (max_impedance
    :reader max_impedance
    :initarg :max_impedance
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (D_impedance
    :reader D_impedance
    :initarg :D_impedance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (K_nullspace
    :reader K_nullspace
    :initarg :K_nullspace
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (force_command
    :reader force_command
    :initarg :force_command
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (interaction_frame
    :reader interaction_frame
    :initarg :interaction_frame
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
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
   (interaction_control_mode
    :reader interaction_control_mode
    :initarg :interaction_control_mode
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (rotations_for_constrained_zeroG
    :reader rotations_for_constrained_zeroG
    :initarg :rotations_for_constrained_zeroG
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InteractionControlCommand (<InteractionControlCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InteractionControlCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InteractionControlCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<InteractionControlCommand> is deprecated: use intera_core_msgs-msg:InteractionControlCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:header-val is deprecated.  Use intera_core_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'interaction_control_active-val :lambda-list '(m))
(cl:defmethod interaction_control_active-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:interaction_control_active-val is deprecated.  Use intera_core_msgs-msg:interaction_control_active instead.")
  (interaction_control_active m))

(cl:ensure-generic-function 'K_impedance-val :lambda-list '(m))
(cl:defmethod K_impedance-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:K_impedance-val is deprecated.  Use intera_core_msgs-msg:K_impedance instead.")
  (K_impedance m))

(cl:ensure-generic-function 'max_impedance-val :lambda-list '(m))
(cl:defmethod max_impedance-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:max_impedance-val is deprecated.  Use intera_core_msgs-msg:max_impedance instead.")
  (max_impedance m))

(cl:ensure-generic-function 'D_impedance-val :lambda-list '(m))
(cl:defmethod D_impedance-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:D_impedance-val is deprecated.  Use intera_core_msgs-msg:D_impedance instead.")
  (D_impedance m))

(cl:ensure-generic-function 'K_nullspace-val :lambda-list '(m))
(cl:defmethod K_nullspace-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:K_nullspace-val is deprecated.  Use intera_core_msgs-msg:K_nullspace instead.")
  (K_nullspace m))

(cl:ensure-generic-function 'force_command-val :lambda-list '(m))
(cl:defmethod force_command-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:force_command-val is deprecated.  Use intera_core_msgs-msg:force_command instead.")
  (force_command m))

(cl:ensure-generic-function 'interaction_frame-val :lambda-list '(m))
(cl:defmethod interaction_frame-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:interaction_frame-val is deprecated.  Use intera_core_msgs-msg:interaction_frame instead.")
  (interaction_frame m))

(cl:ensure-generic-function 'endpoint_name-val :lambda-list '(m))
(cl:defmethod endpoint_name-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:endpoint_name-val is deprecated.  Use intera_core_msgs-msg:endpoint_name instead.")
  (endpoint_name m))

(cl:ensure-generic-function 'in_endpoint_frame-val :lambda-list '(m))
(cl:defmethod in_endpoint_frame-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:in_endpoint_frame-val is deprecated.  Use intera_core_msgs-msg:in_endpoint_frame instead.")
  (in_endpoint_frame m))

(cl:ensure-generic-function 'disable_damping_in_force_control-val :lambda-list '(m))
(cl:defmethod disable_damping_in_force_control-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:disable_damping_in_force_control-val is deprecated.  Use intera_core_msgs-msg:disable_damping_in_force_control instead.")
  (disable_damping_in_force_control m))

(cl:ensure-generic-function 'disable_reference_resetting-val :lambda-list '(m))
(cl:defmethod disable_reference_resetting-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:disable_reference_resetting-val is deprecated.  Use intera_core_msgs-msg:disable_reference_resetting instead.")
  (disable_reference_resetting m))

(cl:ensure-generic-function 'interaction_control_mode-val :lambda-list '(m))
(cl:defmethod interaction_control_mode-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:interaction_control_mode-val is deprecated.  Use intera_core_msgs-msg:interaction_control_mode instead.")
  (interaction_control_mode m))

(cl:ensure-generic-function 'rotations_for_constrained_zeroG-val :lambda-list '(m))
(cl:defmethod rotations_for_constrained_zeroG-val ((m <InteractionControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:rotations_for_constrained_zeroG-val is deprecated.  Use intera_core_msgs-msg:rotations_for_constrained_zeroG instead.")
  (rotations_for_constrained_zeroG m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<InteractionControlCommand>)))
    "Constants for message type '<InteractionControlCommand>"
  '((:IMPEDANCE_MODE . 1)
    (:FORCE_MODE . 2)
    (:IMPEDANCE_WITH_FORCE_LIMIT_MODE . 3)
    (:FORCE_WITH_MOTION_LIMIT_MODE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'InteractionControlCommand)))
    "Constants for message type 'InteractionControlCommand"
  '((:IMPEDANCE_MODE . 1)
    (:FORCE_MODE . 2)
    (:IMPEDANCE_WITH_FORCE_LIMIT_MODE . 3)
    (:FORCE_WITH_MOTION_LIMIT_MODE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InteractionControlCommand>) ostream)
  "Serializes a message object of type '<InteractionControlCommand>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'max_impedance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'max_impedance))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'K_nullspace))))
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
   (cl:slot-value msg 'K_nullspace))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force_command))))
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
   (cl:slot-value msg 'force_command))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'interaction_frame) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'endpoint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'endpoint_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_endpoint_frame) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_damping_in_force_control) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_reference_resetting) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'interaction_control_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'interaction_control_mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotations_for_constrained_zeroG) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InteractionControlCommand>) istream)
  "Deserializes a message object of type '<InteractionControlCommand>"
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
  (cl:setf (cl:slot-value msg 'max_impedance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'max_impedance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
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
  (cl:setf (cl:slot-value msg 'K_nullspace) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'K_nullspace)))
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
  (cl:setf (cl:slot-value msg 'force_command) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force_command)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'interaction_frame) istream)
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'interaction_control_mode) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'interaction_control_mode)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'rotations_for_constrained_zeroG) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InteractionControlCommand>)))
  "Returns string type for a message object of type '<InteractionControlCommand>"
  "intera_core_msgs/InteractionControlCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InteractionControlCommand)))
  "Returns string type for a message object of type 'InteractionControlCommand"
  "intera_core_msgs/InteractionControlCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InteractionControlCommand>)))
  "Returns md5sum for a message object of type '<InteractionControlCommand>"
  "762b5d197d5d786f83741af7fe6261a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InteractionControlCommand)))
  "Returns md5sum for a message object of type 'InteractionControlCommand"
  "762b5d197d5d786f83741af7fe6261a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InteractionControlCommand>)))
  "Returns full string definition for message of type '<InteractionControlCommand>"
  (cl:format cl:nil "# Message sets the interaction (impedance/force) control on or off~%# It also contains desired cartesian stiffness K, damping D, and force values~%~%Header header~%bool      interaction_control_active~%~%## Cartesian Impedance Control Parameters~%# Stiffness units are (N/m) for first 3 and (Nm/rad) for second 3 values~%float64[] K_impedance~%# Force certain directions to have maximum possible impedance for a given pose~%bool[] max_impedance~%# Damping units are (Ns/m) for first 3 and (Nms/rad) for the second 3 values~%float64[] D_impedance~%# Joint Nullspace stiffness units are in (Nm/rad) (length == number of joints)~%float64[] K_nullspace~%~%## Parameters for force control or impedance control with force limit~%# If in force mode, this is the vector of desired forces/torques~%# to be regulated in (N) and (Nm)~%# If in impedance with force limit mode, this vector specifies the~%# magnitude of forces/torques (N and Nm) that the command will not exceed.~%float64[] force_command~%~%## Desired frame~%geometry_msgs/Pose interaction_frame~%string endpoint_name~%# True if impedance and force commands are defined in endpoint frame~%bool in_endpoint_frame~%~%# Set to true to disable damping during force control. Damping is used~%# to slow down robot motion during force control in free space.~%# Option included for SDK users to disable damping in force control~%bool disable_damping_in_force_control~%~%# Set to true to disable reference resetting. Reference resetting is~%# used when interaction parameters change, in order to avoid jumps/jerks.~%# Option included for SDK users to disable reference resetting if the~%# intention is to change interaction parameters.~%bool disable_reference_resetting~%~%## Mode Selection Parameters~%# The possible interaction control modes are:~%# Impedance mode: implements desired endpoint stiffness and damping.~%uint8 IMPEDANCE_MODE=1~%# Force mode: applies force/torque in the specified dimensions.~%uint8 FORCE_MODE=2~%# Impedance with force limit: impedance control while ensuring the commanded~%# forces/torques do not exceed force_command.~%uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3~%# Force with motion bounds: force control while ensuring the current~%# pose/velocities do not exceed forceMotionThreshold (currenetly defined in yaml)~%uint8 FORCE_WITH_MOTION_LIMIT_MODE=4~%~%# Specifies the interaction control mode for each Cartesian dimension (6)~%uint8[] interaction_control_mode~%~%# All 6 values in force and impedance parameter vectors have to be filled,~%# If a control mode is not used in a Cartesian dimension,~%# the corresponding parameters will be ignored.~%~%## Parameters for Constrained Zero-G Behaviors~%# Allow for arbitrary rotational displacements from the current orientation~%# for constrained zero-G. Setting 'rotations_for_constrained_zeroG = True'~%# will disable the rotational stiffness field which limits rotational~%# displacements to +/- 82.5 degree.~%# NOTE: it will be only enabled for a stationary reference orientation~%bool rotations_for_constrained_zeroG~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InteractionControlCommand)))
  "Returns full string definition for message of type 'InteractionControlCommand"
  (cl:format cl:nil "# Message sets the interaction (impedance/force) control on or off~%# It also contains desired cartesian stiffness K, damping D, and force values~%~%Header header~%bool      interaction_control_active~%~%## Cartesian Impedance Control Parameters~%# Stiffness units are (N/m) for first 3 and (Nm/rad) for second 3 values~%float64[] K_impedance~%# Force certain directions to have maximum possible impedance for a given pose~%bool[] max_impedance~%# Damping units are (Ns/m) for first 3 and (Nms/rad) for the second 3 values~%float64[] D_impedance~%# Joint Nullspace stiffness units are in (Nm/rad) (length == number of joints)~%float64[] K_nullspace~%~%## Parameters for force control or impedance control with force limit~%# If in force mode, this is the vector of desired forces/torques~%# to be regulated in (N) and (Nm)~%# If in impedance with force limit mode, this vector specifies the~%# magnitude of forces/torques (N and Nm) that the command will not exceed.~%float64[] force_command~%~%## Desired frame~%geometry_msgs/Pose interaction_frame~%string endpoint_name~%# True if impedance and force commands are defined in endpoint frame~%bool in_endpoint_frame~%~%# Set to true to disable damping during force control. Damping is used~%# to slow down robot motion during force control in free space.~%# Option included for SDK users to disable damping in force control~%bool disable_damping_in_force_control~%~%# Set to true to disable reference resetting. Reference resetting is~%# used when interaction parameters change, in order to avoid jumps/jerks.~%# Option included for SDK users to disable reference resetting if the~%# intention is to change interaction parameters.~%bool disable_reference_resetting~%~%## Mode Selection Parameters~%# The possible interaction control modes are:~%# Impedance mode: implements desired endpoint stiffness and damping.~%uint8 IMPEDANCE_MODE=1~%# Force mode: applies force/torque in the specified dimensions.~%uint8 FORCE_MODE=2~%# Impedance with force limit: impedance control while ensuring the commanded~%# forces/torques do not exceed force_command.~%uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3~%# Force with motion bounds: force control while ensuring the current~%# pose/velocities do not exceed forceMotionThreshold (currenetly defined in yaml)~%uint8 FORCE_WITH_MOTION_LIMIT_MODE=4~%~%# Specifies the interaction control mode for each Cartesian dimension (6)~%uint8[] interaction_control_mode~%~%# All 6 values in force and impedance parameter vectors have to be filled,~%# If a control mode is not used in a Cartesian dimension,~%# the corresponding parameters will be ignored.~%~%## Parameters for Constrained Zero-G Behaviors~%# Allow for arbitrary rotational displacements from the current orientation~%# for constrained zero-G. Setting 'rotations_for_constrained_zeroG = True'~%# will disable the rotational stiffness field which limits rotational~%# displacements to +/- 82.5 degree.~%# NOTE: it will be only enabled for a stationary reference orientation~%bool rotations_for_constrained_zeroG~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InteractionControlCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'K_impedance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'max_impedance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'D_impedance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'K_nullspace) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force_command) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'interaction_frame))
     4 (cl:length (cl:slot-value msg 'endpoint_name))
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'interaction_control_mode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InteractionControlCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'InteractionControlCommand
    (cl:cons ':header (header msg))
    (cl:cons ':interaction_control_active (interaction_control_active msg))
    (cl:cons ':K_impedance (K_impedance msg))
    (cl:cons ':max_impedance (max_impedance msg))
    (cl:cons ':D_impedance (D_impedance msg))
    (cl:cons ':K_nullspace (K_nullspace msg))
    (cl:cons ':force_command (force_command msg))
    (cl:cons ':interaction_frame (interaction_frame msg))
    (cl:cons ':endpoint_name (endpoint_name msg))
    (cl:cons ':in_endpoint_frame (in_endpoint_frame msg))
    (cl:cons ':disable_damping_in_force_control (disable_damping_in_force_control msg))
    (cl:cons ':disable_reference_resetting (disable_reference_resetting msg))
    (cl:cons ':interaction_control_mode (interaction_control_mode msg))
    (cl:cons ':rotations_for_constrained_zeroG (rotations_for_constrained_zeroG msg))
))
