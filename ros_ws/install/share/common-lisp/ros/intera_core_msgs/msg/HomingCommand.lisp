; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude HomingCommand.msg.html

(cl:defclass <HomingCommand> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (command
    :reader command
    :initarg :command
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass HomingCommand (<HomingCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HomingCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HomingCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<HomingCommand> is deprecated: use intera_core_msgs-msg:HomingCommand instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HomingCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:name-val is deprecated.  Use intera_core_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <HomingCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:command-val is deprecated.  Use intera_core_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HomingCommand>)))
    "Constants for message type '<HomingCommand>"
  '((:MANUAL . 1)
    (:AUTO . 2)
    (:NONE . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HomingCommand)))
    "Constants for message type 'HomingCommand"
  '((:MANUAL . 1)
    (:AUTO . 2)
    (:NONE . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HomingCommand>) ostream)
  "Serializes a message object of type '<HomingCommand>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HomingCommand>) istream)
  "Deserializes a message object of type '<HomingCommand>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'command) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'command)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HomingCommand>)))
  "Returns string type for a message object of type '<HomingCommand>"
  "intera_core_msgs/HomingCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HomingCommand)))
  "Returns string type for a message object of type 'HomingCommand"
  "intera_core_msgs/HomingCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HomingCommand>)))
  "Returns md5sum for a message object of type '<HomingCommand>"
  "ff29c86109f0f4cada5bbde945dd55c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HomingCommand)))
  "Returns md5sum for a message object of type 'HomingCommand"
  "ff29c86109f0f4cada5bbde945dd55c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HomingCommand>)))
  "Returns full string definition for message of type '<HomingCommand>"
  (cl:format cl:nil "# This message is used to command the homing state of all joints on the robot.~%# For each joint in the name array the corresponding value in the command~%# sets the homing mode for that joint.~%# MANUAL disengages the joint brake and puts the joint in a \"gumby\" mode.~%# AUTO disengages the joint brake and automatically homes the joint.~%# If a joint is already homed the command has no effect.~%string[] name~%int32[]  command~%# Valid homing commands:~%int32 MANUAL=1~%int32 AUTO=2~%# Invalid, value is used internally:~%int32 NONE=0~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HomingCommand)))
  "Returns full string definition for message of type 'HomingCommand"
  (cl:format cl:nil "# This message is used to command the homing state of all joints on the robot.~%# For each joint in the name array the corresponding value in the command~%# sets the homing mode for that joint.~%# MANUAL disengages the joint brake and puts the joint in a \"gumby\" mode.~%# AUTO disengages the joint brake and automatically homes the joint.~%# If a joint is already homed the command has no effect.~%string[] name~%int32[]  command~%# Valid homing commands:~%int32 MANUAL=1~%int32 AUTO=2~%# Invalid, value is used internally:~%int32 NONE=0~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HomingCommand>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'command) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HomingCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'HomingCommand
    (cl:cons ':name (name msg))
    (cl:cons ':command (command msg))
))
