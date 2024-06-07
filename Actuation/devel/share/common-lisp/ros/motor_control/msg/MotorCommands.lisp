; Auto-generated. Do not edit!


(cl:in-package motor_control-msg)


;//! \htmlinclude MotorCommands.msg.html

(cl:defclass <MotorCommands> (roslisp-msg-protocol:ros-message)
  ((motorcommands
    :reader motorcommands
    :initarg :motorcommands
    :type (cl:vector motor_control-msg:MotorCommand)
   :initform (cl:make-array 0 :element-type 'motor_control-msg:MotorCommand :initial-element (cl:make-instance 'motor_control-msg:MotorCommand))))
)

(cl:defclass MotorCommands (<MotorCommands>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorCommands>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorCommands)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_control-msg:<MotorCommands> is deprecated: use motor_control-msg:MotorCommands instead.")))

(cl:ensure-generic-function 'motorcommands-val :lambda-list '(m))
(cl:defmethod motorcommands-val ((m <MotorCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_control-msg:motorcommands-val is deprecated.  Use motor_control-msg:motorcommands instead.")
  (motorcommands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorCommands>) ostream)
  "Serializes a message object of type '<MotorCommands>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motorcommands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motorcommands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorCommands>) istream)
  "Deserializes a message object of type '<MotorCommands>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motorcommands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motorcommands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'motor_control-msg:MotorCommand))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorCommands>)))
  "Returns string type for a message object of type '<MotorCommands>"
  "motor_control/MotorCommands")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorCommands)))
  "Returns string type for a message object of type 'MotorCommands"
  "motor_control/MotorCommands")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorCommands>)))
  "Returns md5sum for a message object of type '<MotorCommands>"
  "b2edb3d2f4d8f2a09fe7cbec56216411")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorCommands)))
  "Returns md5sum for a message object of type 'MotorCommands"
  "b2edb3d2f4d8f2a09fe7cbec56216411")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorCommands>)))
  "Returns full string definition for message of type '<MotorCommands>"
  (cl:format cl:nil "MotorCommand[] motorcommands~%~%================================================================================~%MSG: motor_control/MotorCommand~%char channel~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorCommands)))
  "Returns full string definition for message of type 'MotorCommands"
  (cl:format cl:nil "MotorCommand[] motorcommands~%~%================================================================================~%MSG: motor_control/MotorCommand~%char channel~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorCommands>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motorcommands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorCommands>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorCommands
    (cl:cons ':motorcommands (motorcommands msg))
))
