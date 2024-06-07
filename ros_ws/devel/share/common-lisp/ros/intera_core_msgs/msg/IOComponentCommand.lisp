; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IOComponentCommand.msg.html

(cl:defclass <IOComponentCommand> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (op
    :reader op
    :initarg :op
    :type cl:string
    :initform "")
   (args
    :reader args
    :initarg :args
    :type cl:string
    :initform ""))
)

(cl:defclass IOComponentCommand (<IOComponentCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOComponentCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOComponentCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IOComponentCommand> is deprecated: use intera_core_msgs-msg:IOComponentCommand instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <IOComponentCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:time-val is deprecated.  Use intera_core_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <IOComponentCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:op-val is deprecated.  Use intera_core_msgs-msg:op instead.")
  (op m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <IOComponentCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:args-val is deprecated.  Use intera_core_msgs-msg:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOComponentCommand>) ostream)
  "Serializes a message object of type '<IOComponentCommand>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'op))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'op))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'args))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOComponentCommand>) istream)
  "Deserializes a message object of type '<IOComponentCommand>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'op) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'op) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'args) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'args) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOComponentCommand>)))
  "Returns string type for a message object of type '<IOComponentCommand>"
  "intera_core_msgs/IOComponentCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOComponentCommand)))
  "Returns string type for a message object of type 'IOComponentCommand"
  "intera_core_msgs/IOComponentCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOComponentCommand>)))
  "Returns md5sum for a message object of type '<IOComponentCommand>"
  "ede95ba2953dc221dc82cac20f697530")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOComponentCommand)))
  "Returns md5sum for a message object of type 'IOComponentCommand"
  "ede95ba2953dc221dc82cac20f697530")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOComponentCommand>)))
  "Returns full string definition for message of type '<IOComponentCommand>"
  (cl:format cl:nil "## IO Component Command~%time time      # time the message was created, serves as a sequence number~%string op      # operation to perform~%string args    # JSON arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOComponentCommand)))
  "Returns full string definition for message of type 'IOComponentCommand"
  (cl:format cl:nil "## IO Component Command~%time time      # time the message was created, serves as a sequence number~%string op      # operation to perform~%string args    # JSON arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOComponentCommand>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'op))
     4 (cl:length (cl:slot-value msg 'args))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOComponentCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'IOComponentCommand
    (cl:cons ':time (time msg))
    (cl:cons ':op (op msg))
    (cl:cons ':args (args msg))
))
