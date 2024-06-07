; Auto-generated. Do not edit!


(cl:in-package intera_motion_msgs-msg)


;//! \htmlinclude TrackingOptions.msg.html

(cl:defclass <TrackingOptions> (roslisp-msg-protocol:ros-message)
  ((use_min_time_rate
    :reader use_min_time_rate
    :initarg :use_min_time_rate
    :type cl:boolean
    :initform cl:nil)
   (min_time_rate
    :reader min_time_rate
    :initarg :min_time_rate
    :type cl:float
    :initform 0.0)
   (use_max_time_rate
    :reader use_max_time_rate
    :initarg :use_max_time_rate
    :type cl:boolean
    :initform cl:nil)
   (max_time_rate
    :reader max_time_rate
    :initarg :max_time_rate
    :type cl:float
    :initform 0.0)
   (goal_joint_tolerance
    :reader goal_joint_tolerance
    :initarg :goal_joint_tolerance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (use_settling_time_at_goal
    :reader use_settling_time_at_goal
    :initarg :use_settling_time_at_goal
    :type cl:boolean
    :initform cl:nil)
   (settling_time_at_goal
    :reader settling_time_at_goal
    :initarg :settling_time_at_goal
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrackingOptions (<TrackingOptions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackingOptions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackingOptions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_motion_msgs-msg:<TrackingOptions> is deprecated: use intera_motion_msgs-msg:TrackingOptions instead.")))

(cl:ensure-generic-function 'use_min_time_rate-val :lambda-list '(m))
(cl:defmethod use_min_time_rate-val ((m <TrackingOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:use_min_time_rate-val is deprecated.  Use intera_motion_msgs-msg:use_min_time_rate instead.")
  (use_min_time_rate m))

(cl:ensure-generic-function 'min_time_rate-val :lambda-list '(m))
(cl:defmethod min_time_rate-val ((m <TrackingOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:min_time_rate-val is deprecated.  Use intera_motion_msgs-msg:min_time_rate instead.")
  (min_time_rate m))

(cl:ensure-generic-function 'use_max_time_rate-val :lambda-list '(m))
(cl:defmethod use_max_time_rate-val ((m <TrackingOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:use_max_time_rate-val is deprecated.  Use intera_motion_msgs-msg:use_max_time_rate instead.")
  (use_max_time_rate m))

(cl:ensure-generic-function 'max_time_rate-val :lambda-list '(m))
(cl:defmethod max_time_rate-val ((m <TrackingOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:max_time_rate-val is deprecated.  Use intera_motion_msgs-msg:max_time_rate instead.")
  (max_time_rate m))

(cl:ensure-generic-function 'goal_joint_tolerance-val :lambda-list '(m))
(cl:defmethod goal_joint_tolerance-val ((m <TrackingOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:goal_joint_tolerance-val is deprecated.  Use intera_motion_msgs-msg:goal_joint_tolerance instead.")
  (goal_joint_tolerance m))

(cl:ensure-generic-function 'use_settling_time_at_goal-val :lambda-list '(m))
(cl:defmethod use_settling_time_at_goal-val ((m <TrackingOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:use_settling_time_at_goal-val is deprecated.  Use intera_motion_msgs-msg:use_settling_time_at_goal instead.")
  (use_settling_time_at_goal m))

(cl:ensure-generic-function 'settling_time_at_goal-val :lambda-list '(m))
(cl:defmethod settling_time_at_goal-val ((m <TrackingOptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:settling_time_at_goal-val is deprecated.  Use intera_motion_msgs-msg:settling_time_at_goal instead.")
  (settling_time_at_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackingOptions>) ostream)
  "Serializes a message object of type '<TrackingOptions>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_min_time_rate) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_time_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_max_time_rate) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_time_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_joint_tolerance))))
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
   (cl:slot-value msg 'goal_joint_tolerance))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_settling_time_at_goal) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'settling_time_at_goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackingOptions>) istream)
  "Deserializes a message object of type '<TrackingOptions>"
    (cl:setf (cl:slot-value msg 'use_min_time_rate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_time_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'use_max_time_rate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_time_rate) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_joint_tolerance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_joint_tolerance)))
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
    (cl:setf (cl:slot-value msg 'use_settling_time_at_goal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'settling_time_at_goal) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackingOptions>)))
  "Returns string type for a message object of type '<TrackingOptions>"
  "intera_motion_msgs/TrackingOptions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingOptions)))
  "Returns string type for a message object of type 'TrackingOptions"
  "intera_motion_msgs/TrackingOptions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackingOptions>)))
  "Returns md5sum for a message object of type '<TrackingOptions>"
  "e848e8a266b514c3bde707d0e1859055")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackingOptions)))
  "Returns md5sum for a message object of type 'TrackingOptions"
  "e848e8a266b514c3bde707d0e1859055")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackingOptions>)))
  "Returns full string definition for message of type '<TrackingOptions>"
  (cl:format cl:nil "# Minimum trajectory tracking time rate:  (default = less than one)~%bool     use_min_time_rate~%float64  min_time_rate~%~%# Maximum trajectory tracking time rate:  (1.0 = real-time = default)~%bool     use_max_time_rate~%float64  max_time_rate~%~%# Angular error tolerance at final point on trajectory (rad)~%float64[] goal_joint_tolerance~%~%# Time for the controller to settle within joint tolerances at the goal (sec)~%bool     use_settling_time_at_goal~%float64  settling_time_at_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackingOptions)))
  "Returns full string definition for message of type 'TrackingOptions"
  (cl:format cl:nil "# Minimum trajectory tracking time rate:  (default = less than one)~%bool     use_min_time_rate~%float64  min_time_rate~%~%# Maximum trajectory tracking time rate:  (1.0 = real-time = default)~%bool     use_max_time_rate~%float64  max_time_rate~%~%# Angular error tolerance at final point on trajectory (rad)~%float64[] goal_joint_tolerance~%~%# Time for the controller to settle within joint tolerances at the goal (sec)~%bool     use_settling_time_at_goal~%float64  settling_time_at_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackingOptions>))
  (cl:+ 0
     1
     8
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_joint_tolerance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackingOptions>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackingOptions
    (cl:cons ':use_min_time_rate (use_min_time_rate msg))
    (cl:cons ':min_time_rate (min_time_rate msg))
    (cl:cons ':use_max_time_rate (use_max_time_rate msg))
    (cl:cons ':max_time_rate (max_time_rate msg))
    (cl:cons ':goal_joint_tolerance (goal_joint_tolerance msg))
    (cl:cons ':use_settling_time_at_goal (use_settling_time_at_goal msg))
    (cl:cons ':settling_time_at_goal (settling_time_at_goal msg))
))
