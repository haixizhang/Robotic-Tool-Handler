; Auto-generated. Do not edit!


(cl:in-package intera_motion_msgs-msg)


;//! \htmlinclude WaypointOptions.msg.html

(cl:defclass <WaypointOptions> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (max_joint_speed_ratio
    :reader max_joint_speed_ratio
    :initarg :max_joint_speed_ratio
    :type cl:float
    :initform 0.0)
   (joint_tolerances
    :reader joint_tolerances
    :initarg :joint_tolerances
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (max_joint_accel
    :reader max_joint_accel
    :initarg :max_joint_accel
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (max_linear_speed
    :reader max_linear_speed
    :initarg :max_linear_speed
    :type cl:float
    :initform 0.0)
   (max_linear_accel
    :reader max_linear_accel
    :initarg :max_linear_accel
    :type cl:float
    :initform 0.0)
   (max_rotational_speed
    :reader max_rotational_speed
    :initarg :max_rotational_speed
    :type cl:float
    :initform 0.0)
   (max_rotational_accel
    :reader max_rotational_accel
    :initarg :max_rotational_accel
    :type cl:float
    :initform 0.0)
   (corner_distance
    :reader corner_distance
    :initarg :corner_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass WaypointOptions (<WaypointOptions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointOptions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointOptions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_motion_msgs-msg:<WaypointOptions> is deprecated: use intera_motion_msgs-msg:WaypointOptions instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <WaypointOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:label-val is deprecated.  Use intera_motion_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'max_joint_speed_ratio-val :lambda-list '(m))
(cl:defmethod max_joint_speed_ratio-val ((m <WaypointOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:max_joint_speed_ratio-val is deprecated.  Use intera_motion_msgs-msg:max_joint_speed_ratio instead.")
  (max_joint_speed_ratio m))

(cl:ensure-generic-function 'joint_tolerances-val :lambda-list '(m))
(cl:defmethod joint_tolerances-val ((m <WaypointOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:joint_tolerances-val is deprecated.  Use intera_motion_msgs-msg:joint_tolerances instead.")
  (joint_tolerances m))

(cl:ensure-generic-function 'max_joint_accel-val :lambda-list '(m))
(cl:defmethod max_joint_accel-val ((m <WaypointOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:max_joint_accel-val is deprecated.  Use intera_motion_msgs-msg:max_joint_accel instead.")
  (max_joint_accel m))

(cl:ensure-generic-function 'max_linear_speed-val :lambda-list '(m))
(cl:defmethod max_linear_speed-val ((m <WaypointOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:max_linear_speed-val is deprecated.  Use intera_motion_msgs-msg:max_linear_speed instead.")
  (max_linear_speed m))

(cl:ensure-generic-function 'max_linear_accel-val :lambda-list '(m))
(cl:defmethod max_linear_accel-val ((m <WaypointOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:max_linear_accel-val is deprecated.  Use intera_motion_msgs-msg:max_linear_accel instead.")
  (max_linear_accel m))

(cl:ensure-generic-function 'max_rotational_speed-val :lambda-list '(m))
(cl:defmethod max_rotational_speed-val ((m <WaypointOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:max_rotational_speed-val is deprecated.  Use intera_motion_msgs-msg:max_rotational_speed instead.")
  (max_rotational_speed m))

(cl:ensure-generic-function 'max_rotational_accel-val :lambda-list '(m))
(cl:defmethod max_rotational_accel-val ((m <WaypointOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:max_rotational_accel-val is deprecated.  Use intera_motion_msgs-msg:max_rotational_accel instead.")
  (max_rotational_accel m))

(cl:ensure-generic-function 'corner_distance-val :lambda-list '(m))
(cl:defmethod corner_distance-val ((m <WaypointOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:corner_distance-val is deprecated.  Use intera_motion_msgs-msg:corner_distance instead.")
  (corner_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointOptions>) ostream)
  "Serializes a message object of type '<WaypointOptions>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_joint_speed_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_tolerances))))
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
   (cl:slot-value msg 'joint_tolerances))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'max_joint_accel))))
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
   (cl:slot-value msg 'max_joint_accel))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_linear_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_linear_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_rotational_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_rotational_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'corner_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointOptions>) istream)
  "Deserializes a message object of type '<WaypointOptions>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_joint_speed_ratio) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_tolerances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_tolerances)))
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
  (cl:setf (cl:slot-value msg 'max_joint_accel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'max_joint_accel)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_accel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_rotational_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_rotational_accel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'corner_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointOptions>)))
  "Returns string type for a message object of type '<WaypointOptions>"
  "intera_motion_msgs/WaypointOptions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointOptions)))
  "Returns string type for a message object of type 'WaypointOptions"
  "intera_motion_msgs/WaypointOptions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointOptions>)))
  "Returns md5sum for a message object of type '<WaypointOptions>"
  "1b4687d4e536269b06e629169723339f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointOptions)))
  "Returns md5sum for a message object of type 'WaypointOptions"
  "1b4687d4e536269b06e629169723339f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointOptions>)))
  "Returns full string definition for message of type '<WaypointOptions>"
  (cl:format cl:nil "# Optional waypoint label~%string label~%~%# Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)~%float64 max_joint_speed_ratio~%~%# Slowdown heuristic is triggered if tracking error exceeds tolerances - radians~%float64[] joint_tolerances~%~%# Maximum accelerations for each joint (only for joint paths) - rad/s^2.~%float64[] max_joint_accel~%~%~%###########################################################~%# The remaining parameters only apply to Cartesian paths~%~%# Maximum linear speed of endpoint - m/s~%float64 max_linear_speed~%~%# Maximum linear acceleration of endpoint - m/s^2~%float64 max_linear_accel~%~%# Maximum rotational speed of endpoint - rad/s~%float64 max_rotational_speed~%~%# Maximum rotational acceleration of endpoint - rad/s^2~%float64 max_rotational_accel~%~%# Used for smoothing corners for continuous motion - m~%# The distance from the waypoint to where the curve starts while blending from~%# one straight line segment to the next.~%# Larger distance:  trajectory passes farther from the waypoint at a higher speed~%# Smaller distance:  trajectory passes closer to the waypoint at a lower speed~%# Zero distance:  trajectory passes through the waypoint at zero speed~%float64 corner_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointOptions)))
  "Returns full string definition for message of type 'WaypointOptions"
  (cl:format cl:nil "# Optional waypoint label~%string label~%~%# Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)~%float64 max_joint_speed_ratio~%~%# Slowdown heuristic is triggered if tracking error exceeds tolerances - radians~%float64[] joint_tolerances~%~%# Maximum accelerations for each joint (only for joint paths) - rad/s^2.~%float64[] max_joint_accel~%~%~%###########################################################~%# The remaining parameters only apply to Cartesian paths~%~%# Maximum linear speed of endpoint - m/s~%float64 max_linear_speed~%~%# Maximum linear acceleration of endpoint - m/s^2~%float64 max_linear_accel~%~%# Maximum rotational speed of endpoint - rad/s~%float64 max_rotational_speed~%~%# Maximum rotational acceleration of endpoint - rad/s^2~%float64 max_rotational_accel~%~%# Used for smoothing corners for continuous motion - m~%# The distance from the waypoint to where the curve starts while blending from~%# one straight line segment to the next.~%# Larger distance:  trajectory passes farther from the waypoint at a higher speed~%# Smaller distance:  trajectory passes closer to the waypoint at a lower speed~%# Zero distance:  trajectory passes through the waypoint at zero speed~%float64 corner_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointOptions>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_tolerances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'max_joint_accel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointOptions>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointOptions
    (cl:cons ':label (label msg))
    (cl:cons ':max_joint_speed_ratio (max_joint_speed_ratio msg))
    (cl:cons ':joint_tolerances (joint_tolerances msg))
    (cl:cons ':max_joint_accel (max_joint_accel msg))
    (cl:cons ':max_linear_speed (max_linear_speed msg))
    (cl:cons ':max_linear_accel (max_linear_accel msg))
    (cl:cons ':max_rotational_speed (max_rotational_speed msg))
    (cl:cons ':max_rotational_accel (max_rotational_accel msg))
    (cl:cons ':corner_distance (corner_distance msg))
))
