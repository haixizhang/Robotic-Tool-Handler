; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude HeadState.msg.html

(cl:defclass <HeadState> (roslisp-msg-protocol:ros-message)
  ((pan
    :reader pan
    :initarg :pan
    :type cl:float
    :initform 0.0)
   (isTurning
    :reader isTurning
    :initarg :isTurning
    :type cl:boolean
    :initform cl:nil)
   (isBlocked
    :reader isBlocked
    :initarg :isBlocked
    :type cl:boolean
    :initform cl:nil)
   (panMode
    :reader panMode
    :initarg :panMode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HeadState (<HeadState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<HeadState> is deprecated: use intera_core_msgs-msg:HeadState instead.")))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <HeadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:pan-val is deprecated.  Use intera_core_msgs-msg:pan instead.")
  (pan m))

(cl:ensure-generic-function 'isTurning-val :lambda-list '(m))
(cl:defmethod isTurning-val ((m <HeadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:isTurning-val is deprecated.  Use intera_core_msgs-msg:isTurning instead.")
  (isTurning m))

(cl:ensure-generic-function 'isBlocked-val :lambda-list '(m))
(cl:defmethod isBlocked-val ((m <HeadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:isBlocked-val is deprecated.  Use intera_core_msgs-msg:isBlocked instead.")
  (isBlocked m))

(cl:ensure-generic-function 'panMode-val :lambda-list '(m))
(cl:defmethod panMode-val ((m <HeadState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:panMode-val is deprecated.  Use intera_core_msgs-msg:panMode instead.")
  (panMode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeadState>)))
    "Constants for message type '<HeadState>"
  '((:PASSIVE_MODE . 0)
    (:ACTIVE_MODE . 1)
    (:ACTIVE_CANCELLATION_MODE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeadState)))
    "Constants for message type 'HeadState"
  '((:PASSIVE_MODE . 0)
    (:ACTIVE_MODE . 1)
    (:ACTIVE_CANCELLATION_MODE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadState>) ostream)
  "Serializes a message object of type '<HeadState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isTurning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isBlocked) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'panMode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadState>) istream)
  "Deserializes a message object of type '<HeadState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isTurning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isBlocked) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'panMode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadState>)))
  "Returns string type for a message object of type '<HeadState>"
  "intera_core_msgs/HeadState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadState)))
  "Returns string type for a message object of type 'HeadState"
  "intera_core_msgs/HeadState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadState>)))
  "Returns md5sum for a message object of type '<HeadState>"
  "51024ade10ffefe117049c9ba6fd743c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadState)))
  "Returns md5sum for a message object of type 'HeadState"
  "51024ade10ffefe117049c9ba6fd743c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadState>)))
  "Returns full string definition for message of type '<HeadState>"
  (cl:format cl:nil "float32 pan~%bool isTurning~%~%# isBlocked will be true during active cancellation when the desired head position~%# can not be reached because of j0's current position~%bool isBlocked~%~%# panMode will be one of~%uint8 PASSIVE_MODE             = 0~%uint8 ACTIVE_MODE              = 1~%uint8 ACTIVE_CANCELLATION_MODE = 2~%#~%uint8 panMode~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadState)))
  "Returns full string definition for message of type 'HeadState"
  (cl:format cl:nil "float32 pan~%bool isTurning~%~%# isBlocked will be true during active cancellation when the desired head position~%# can not be reached because of j0's current position~%bool isBlocked~%~%# panMode will be one of~%uint8 PASSIVE_MODE             = 0~%uint8 ACTIVE_MODE              = 1~%uint8 ACTIVE_CANCELLATION_MODE = 2~%#~%uint8 panMode~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadState>))
  (cl:+ 0
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadState>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadState
    (cl:cons ':pan (pan msg))
    (cl:cons ':isTurning (isTurning msg))
    (cl:cons ':isBlocked (isBlocked msg))
    (cl:cons ':panMode (panMode msg))
))
