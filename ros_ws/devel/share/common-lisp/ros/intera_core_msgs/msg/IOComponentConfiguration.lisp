; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IOComponentConfiguration.msg.html

(cl:defclass <IOComponentConfiguration> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (config
    :reader config
    :initarg :config
    :type cl:string
    :initform ""))
)

(cl:defclass IOComponentConfiguration (<IOComponentConfiguration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOComponentConfiguration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOComponentConfiguration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IOComponentConfiguration> is deprecated: use intera_core_msgs-msg:IOComponentConfiguration instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <IOComponentConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:name-val is deprecated.  Use intera_core_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <IOComponentConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:config-val is deprecated.  Use intera_core_msgs-msg:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOComponentConfiguration>) ostream)
  "Serializes a message object of type '<IOComponentConfiguration>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'config))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'config))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOComponentConfiguration>) istream)
  "Deserializes a message object of type '<IOComponentConfiguration>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'config) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'config) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOComponentConfiguration>)))
  "Returns string type for a message object of type '<IOComponentConfiguration>"
  "intera_core_msgs/IOComponentConfiguration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOComponentConfiguration)))
  "Returns string type for a message object of type 'IOComponentConfiguration"
  "intera_core_msgs/IOComponentConfiguration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOComponentConfiguration>)))
  "Returns md5sum for a message object of type '<IOComponentConfiguration>"
  "cb7717d13a521b51b5c0a02d493c42fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOComponentConfiguration)))
  "Returns md5sum for a message object of type 'IOComponentConfiguration"
  "cb7717d13a521b51b5c0a02d493c42fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOComponentConfiguration>)))
  "Returns full string definition for message of type '<IOComponentConfiguration>"
  (cl:format cl:nil "## IO Component configuration data~%string name                           # component name~%string config                         # component configuration JSON~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOComponentConfiguration)))
  "Returns full string definition for message of type 'IOComponentConfiguration"
  (cl:format cl:nil "## IO Component configuration data~%string name                           # component name~%string config                         # component configuration JSON~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOComponentConfiguration>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'config))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOComponentConfiguration>))
  "Converts a ROS message object to a list"
  (cl:list 'IOComponentConfiguration
    (cl:cons ':name (name msg))
    (cl:cons ':config (config msg))
))
