; Auto-generated. Do not edit!


(cl:in-package intera_motion_msgs-msg)


;//! \htmlinclude MotionStatus.msg.html

(cl:defclass <MotionStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motion_status
    :reader motion_status
    :initarg :motion_status
    :type cl:string
    :initform "")
   (current_trajectory
    :reader current_trajectory
    :initarg :current_trajectory
    :type cl:string
    :initform "")
   (current_waypoint
    :reader current_waypoint
    :initarg :current_waypoint
    :type cl:integer
    :initform 0)
   (motion_request
    :reader motion_request
    :initarg :motion_request
    :type cl:integer
    :initform 0))
)

(cl:defclass MotionStatus (<MotionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_motion_msgs-msg:<MotionStatus> is deprecated: use intera_motion_msgs-msg:MotionStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:header-val is deprecated.  Use intera_motion_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motion_status-val :lambda-list '(m))
(cl:defmethod motion_status-val ((m <MotionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:motion_status-val is deprecated.  Use intera_motion_msgs-msg:motion_status instead.")
  (motion_status m))

(cl:ensure-generic-function 'current_trajectory-val :lambda-list '(m))
(cl:defmethod current_trajectory-val ((m <MotionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:current_trajectory-val is deprecated.  Use intera_motion_msgs-msg:current_trajectory instead.")
  (current_trajectory m))

(cl:ensure-generic-function 'current_waypoint-val :lambda-list '(m))
(cl:defmethod current_waypoint-val ((m <MotionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:current_waypoint-val is deprecated.  Use intera_motion_msgs-msg:current_waypoint instead.")
  (current_waypoint m))

(cl:ensure-generic-function 'motion_request-val :lambda-list '(m))
(cl:defmethod motion_request-val ((m <MotionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:motion_request-val is deprecated.  Use intera_motion_msgs-msg:motion_request instead.")
  (motion_request m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MotionStatus>)))
    "Constants for message type '<MotionStatus>"
  '((:MOTION_IDLE . "idle")
    (:MOTION_PENDING . "pending")
    (:MOTION_RUNNING . "running")
    (:MOTION_STOPPING . "stopping")
    (:MOTION_DONE . "done")
    (:MOTION_PREEMPTED . "preempted")
    (:MOTION_ERROR . "error"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MotionStatus)))
    "Constants for message type 'MotionStatus"
  '((:MOTION_IDLE . "idle")
    (:MOTION_PENDING . "pending")
    (:MOTION_RUNNING . "running")
    (:MOTION_STOPPING . "stopping")
    (:MOTION_DONE . "done")
    (:MOTION_PREEMPTED . "preempted")
    (:MOTION_ERROR . "error"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionStatus>) ostream)
  "Serializes a message object of type '<MotionStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motion_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motion_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_trajectory))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_waypoint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_waypoint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_waypoint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_waypoint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_request)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motion_request)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'motion_request)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'motion_request)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionStatus>) istream)
  "Deserializes a message object of type '<MotionStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motion_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motion_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_trajectory) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_trajectory) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_waypoint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_waypoint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_waypoint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_waypoint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_request)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motion_request)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'motion_request)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'motion_request)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionStatus>)))
  "Returns string type for a message object of type '<MotionStatus>"
  "intera_motion_msgs/MotionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionStatus)))
  "Returns string type for a message object of type 'MotionStatus"
  "intera_motion_msgs/MotionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionStatus>)))
  "Returns md5sum for a message object of type '<MotionStatus>"
  "178c2a9a52d756f9d73396be4ec1a07c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionStatus)))
  "Returns md5sum for a message object of type 'MotionStatus"
  "178c2a9a52d756f9d73396be4ec1a07c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionStatus>)))
  "Returns full string definition for message of type '<MotionStatus>"
  (cl:format cl:nil "# motion status~%Header header~%string motion_status~%string current_trajectory~%uint32 current_waypoint~%uint32 motion_request~%~%# motion_status enum values:~%string MOTION_IDLE=idle~%string MOTION_PENDING=pending~%string MOTION_RUNNING=running~%string MOTION_STOPPING=stopping~%string MOTION_DONE=done~%string MOTION_PREEMPTED=preempted~%string MOTION_ERROR=error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionStatus)))
  "Returns full string definition for message of type 'MotionStatus"
  (cl:format cl:nil "# motion status~%Header header~%string motion_status~%string current_trajectory~%uint32 current_waypoint~%uint32 motion_request~%~%# motion_status enum values:~%string MOTION_IDLE=idle~%string MOTION_PENDING=pending~%string MOTION_RUNNING=running~%string MOTION_STOPPING=stopping~%string MOTION_DONE=done~%string MOTION_PREEMPTED=preempted~%string MOTION_ERROR=error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'motion_status))
     4 (cl:length (cl:slot-value msg 'current_trajectory))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionStatus
    (cl:cons ':header (header msg))
    (cl:cons ':motion_status (motion_status msg))
    (cl:cons ':current_trajectory (current_trajectory msg))
    (cl:cons ':current_waypoint (current_waypoint msg))
    (cl:cons ':motion_request (motion_request msg))
))
