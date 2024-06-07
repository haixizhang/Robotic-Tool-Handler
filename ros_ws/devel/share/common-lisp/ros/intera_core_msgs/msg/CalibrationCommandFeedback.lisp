; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude CalibrationCommandFeedback.msg.html

(cl:defclass <CalibrationCommandFeedback> (roslisp-msg-protocol:ros-message)
  ((currentState
    :reader currentState
    :initarg :currentState
    :type cl:string
    :initform "")
   (numberOfPoses
    :reader numberOfPoses
    :initarg :numberOfPoses
    :type cl:integer
    :initform 0)
   (currentPoseNumber
    :reader currentPoseNumber
    :initarg :currentPoseNumber
    :type cl:integer
    :initform 0))
)

(cl:defclass CalibrationCommandFeedback (<CalibrationCommandFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationCommandFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationCommandFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<CalibrationCommandFeedback> is deprecated: use intera_core_msgs-msg:CalibrationCommandFeedback instead.")))

(cl:ensure-generic-function 'currentState-val :lambda-list '(m))
(cl:defmethod currentState-val ((m <CalibrationCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:currentState-val is deprecated.  Use intera_core_msgs-msg:currentState instead.")
  (currentState m))

(cl:ensure-generic-function 'numberOfPoses-val :lambda-list '(m))
(cl:defmethod numberOfPoses-val ((m <CalibrationCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:numberOfPoses-val is deprecated.  Use intera_core_msgs-msg:numberOfPoses instead.")
  (numberOfPoses m))

(cl:ensure-generic-function 'currentPoseNumber-val :lambda-list '(m))
(cl:defmethod currentPoseNumber-val ((m <CalibrationCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:currentPoseNumber-val is deprecated.  Use intera_core_msgs-msg:currentPoseNumber instead.")
  (currentPoseNumber m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationCommandFeedback>) ostream)
  "Serializes a message object of type '<CalibrationCommandFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'currentState))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'currentState))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfPoses)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numberOfPoses)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numberOfPoses)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numberOfPoses)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currentPoseNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'currentPoseNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'currentPoseNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'currentPoseNumber)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationCommandFeedback>) istream)
  "Deserializes a message object of type '<CalibrationCommandFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'currentState) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'currentState) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfPoses)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numberOfPoses)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numberOfPoses)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numberOfPoses)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currentPoseNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'currentPoseNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'currentPoseNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'currentPoseNumber)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationCommandFeedback>)))
  "Returns string type for a message object of type '<CalibrationCommandFeedback>"
  "intera_core_msgs/CalibrationCommandFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationCommandFeedback)))
  "Returns string type for a message object of type 'CalibrationCommandFeedback"
  "intera_core_msgs/CalibrationCommandFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationCommandFeedback>)))
  "Returns md5sum for a message object of type '<CalibrationCommandFeedback>"
  "a4e5158c157d9fb03da0faf44b425ee1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationCommandFeedback)))
  "Returns md5sum for a message object of type 'CalibrationCommandFeedback"
  "a4e5158c157d9fb03da0faf44b425ee1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationCommandFeedback>)))
  "Returns full string definition for message of type '<CalibrationCommandFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%string currentState~%uint32 numberOfPoses~%uint32 currentPoseNumber~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationCommandFeedback)))
  "Returns full string definition for message of type 'CalibrationCommandFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%string currentState~%uint32 numberOfPoses~%uint32 currentPoseNumber~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationCommandFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'currentState))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationCommandFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationCommandFeedback
    (cl:cons ':currentState (currentState msg))
    (cl:cons ':numberOfPoses (numberOfPoses msg))
    (cl:cons ':currentPoseNumber (currentPoseNumber msg))
))
