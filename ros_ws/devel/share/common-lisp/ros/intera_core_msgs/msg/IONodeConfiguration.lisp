; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IONodeConfiguration.msg.html

(cl:defclass <IONodeConfiguration> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (node
    :reader node
    :initarg :node
    :type intera_core_msgs-msg:IOComponentConfiguration
    :initform (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration))
   (devices
    :reader devices
    :initarg :devices
    :type (cl:vector intera_core_msgs-msg:IOComponentConfiguration)
   :initform (cl:make-array 0 :element-type 'intera_core_msgs-msg:IOComponentConfiguration :initial-element (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration)))
   (plugins
    :reader plugins
    :initarg :plugins
    :type (cl:vector intera_core_msgs-msg:IOComponentConfiguration)
   :initform (cl:make-array 0 :element-type 'intera_core_msgs-msg:IOComponentConfiguration :initial-element (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration))))
)

(cl:defclass IONodeConfiguration (<IONodeConfiguration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IONodeConfiguration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IONodeConfiguration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IONodeConfiguration> is deprecated: use intera_core_msgs-msg:IONodeConfiguration instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <IONodeConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:time-val is deprecated.  Use intera_core_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <IONodeConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:node-val is deprecated.  Use intera_core_msgs-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'devices-val :lambda-list '(m))
(cl:defmethod devices-val ((m <IONodeConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:devices-val is deprecated.  Use intera_core_msgs-msg:devices instead.")
  (devices m))

(cl:ensure-generic-function 'plugins-val :lambda-list '(m))
(cl:defmethod plugins-val ((m <IONodeConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:plugins-val is deprecated.  Use intera_core_msgs-msg:plugins instead.")
  (plugins m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IONodeConfiguration>) ostream)
  "Serializes a message object of type '<IONodeConfiguration>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'devices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'devices))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plugins))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'plugins))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IONodeConfiguration>) istream)
  "Deserializes a message object of type '<IONodeConfiguration>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'devices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'devices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plugins) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plugins)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IONodeConfiguration>)))
  "Returns string type for a message object of type '<IONodeConfiguration>"
  "intera_core_msgs/IONodeConfiguration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IONodeConfiguration)))
  "Returns string type for a message object of type 'IONodeConfiguration"
  "intera_core_msgs/IONodeConfiguration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IONodeConfiguration>)))
  "Returns md5sum for a message object of type '<IONodeConfiguration>"
  "66800b32dbb52df00e2454d58668ac33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IONodeConfiguration)))
  "Returns md5sum for a message object of type 'IONodeConfiguration"
  "66800b32dbb52df00e2454d58668ac33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IONodeConfiguration>)))
  "Returns full string definition for message of type '<IONodeConfiguration>"
  (cl:format cl:nil "# IO Node Configuration~%time time                           # configuration command timestamp~%IOComponentConfiguration node       # IO Node configuration~%IOComponentConfiguration[] devices  # configuration of IO Devices in this node~%IOComponentConfiguration[] plugins  # configuration of IO Device Plugins in this node~%~%================================================================================~%MSG: intera_core_msgs/IOComponentConfiguration~%## IO Component configuration data~%string name                           # component name~%string config                         # component configuration JSON~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IONodeConfiguration)))
  "Returns full string definition for message of type 'IONodeConfiguration"
  (cl:format cl:nil "# IO Node Configuration~%time time                           # configuration command timestamp~%IOComponentConfiguration node       # IO Node configuration~%IOComponentConfiguration[] devices  # configuration of IO Devices in this node~%IOComponentConfiguration[] plugins  # configuration of IO Device Plugins in this node~%~%================================================================================~%MSG: intera_core_msgs/IOComponentConfiguration~%## IO Component configuration data~%string name                           # component name~%string config                         # component configuration JSON~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IONodeConfiguration>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'devices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plugins) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IONodeConfiguration>))
  "Converts a ROS message object to a list"
  (cl:list 'IONodeConfiguration
    (cl:cons ':time (time msg))
    (cl:cons ':node (node msg))
    (cl:cons ':devices (devices msg))
    (cl:cons ':plugins (plugins msg))
))
