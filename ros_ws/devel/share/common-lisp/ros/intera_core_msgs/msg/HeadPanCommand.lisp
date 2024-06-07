; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude HeadPanCommand.msg.html

(cl:defclass <HeadPanCommand> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type cl:float
    :initform 0.0)
   (speed_ratio
    :reader speed_ratio
    :initarg :speed_ratio
    :type cl:float
    :initform 0.0)
   (pan_mode
    :reader pan_mode
    :initarg :pan_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HeadPanCommand (<HeadPanCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadPanCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadPanCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<HeadPanCommand> is deprecated: use intera_core_msgs-msg:HeadPanCommand instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <HeadPanCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:target-val is deprecated.  Use intera_core_msgs-msg:target instead.")
  (target m))

(cl:ensure-generic-function 'speed_ratio-val :lambda-list '(m))
(cl:defmethod speed_ratio-val ((m <HeadPanCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:speed_ratio-val is deprecated.  Use intera_core_msgs-msg:speed_ratio instead.")
  (speed_ratio m))

(cl:ensure-generic-function 'pan_mode-val :lambda-list '(m))
(cl:defmethod pan_mode-val ((m <HeadPanCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:pan_mode-val is deprecated.  Use intera_core_msgs-msg:pan_mode instead.")
  (pan_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeadPanCommand>)))
    "Constants for message type '<HeadPanCommand>"
  '((:MAX_SPEED_RATIO . 1.0)
    (:MIN_SPEED_RATIO . 0.0)
    (:SET_PASSIVE_MODE . 0)
    (:SET_ACTIVE_MODE . 1)
    (:SET_ACTIVE_CANCELLATION_MODE . 2)
    (:NO_MODE_CHANGE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeadPanCommand)))
    "Constants for message type 'HeadPanCommand"
  '((:MAX_SPEED_RATIO . 1.0)
    (:MIN_SPEED_RATIO . 0.0)
    (:SET_PASSIVE_MODE . 0)
    (:SET_ACTIVE_MODE . 1)
    (:SET_ACTIVE_CANCELLATION_MODE . 2)
    (:NO_MODE_CHANGE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadPanCommand>) ostream)
  "Serializes a message object of type '<HeadPanCommand>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pan_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadPanCommand>) istream)
  "Deserializes a message object of type '<HeadPanCommand>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pan_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadPanCommand>)))
  "Returns string type for a message object of type '<HeadPanCommand>"
  "intera_core_msgs/HeadPanCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadPanCommand)))
  "Returns string type for a message object of type 'HeadPanCommand"
  "intera_core_msgs/HeadPanCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadPanCommand>)))
  "Returns md5sum for a message object of type '<HeadPanCommand>"
  "5cb68e8755646564cf47813f91cee216")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadPanCommand)))
  "Returns md5sum for a message object of type 'HeadPanCommand"
  "5cb68e8755646564cf47813f91cee216")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadPanCommand>)))
  "Returns full string definition for message of type '<HeadPanCommand>"
  (cl:format cl:nil "float32 target              # radians for target, 0 str~%float32 speed_ratio         # Percentage of max speed [0-1]~%#~%  float32 MAX_SPEED_RATIO = 1.0~%  float32 MIN_SPEED_RATIO = 0.0~%#~%uint8   pan_mode  # set to one of constants below to change pan mode~%# pan_mode possible states~%  uint8   SET_PASSIVE_MODE = 0~%  uint8   SET_ACTIVE_MODE = 1~%  uint8   SET_ACTIVE_CANCELLATION_MODE = 2~%  uint8   NO_MODE_CHANGE = 3~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadPanCommand)))
  "Returns full string definition for message of type 'HeadPanCommand"
  (cl:format cl:nil "float32 target              # radians for target, 0 str~%float32 speed_ratio         # Percentage of max speed [0-1]~%#~%  float32 MAX_SPEED_RATIO = 1.0~%  float32 MIN_SPEED_RATIO = 0.0~%#~%uint8   pan_mode  # set to one of constants below to change pan mode~%# pan_mode possible states~%  uint8   SET_PASSIVE_MODE = 0~%  uint8   SET_ACTIVE_MODE = 1~%  uint8   SET_ACTIVE_CANCELLATION_MODE = 2~%  uint8   NO_MODE_CHANGE = 3~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadPanCommand>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadPanCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadPanCommand
    (cl:cons ':target (target msg))
    (cl:cons ':speed_ratio (speed_ratio msg))
    (cl:cons ':pan_mode (pan_mode msg))
))
