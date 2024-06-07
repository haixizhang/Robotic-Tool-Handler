; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IONodeStatus.msg.html

(cl:defclass <IONodeStatus> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (node
    :reader node
    :initarg :node
    :type intera_core_msgs-msg:IOComponentStatus
    :initform (cl:make-instance 'intera_core_msgs-msg:IOComponentStatus))
   (devices
    :reader devices
    :initarg :devices
    :type (cl:vector intera_core_msgs-msg:IOComponentStatus)
   :initform (cl:make-array 0 :element-type 'intera_core_msgs-msg:IOComponentStatus :initial-element (cl:make-instance 'intera_core_msgs-msg:IOComponentStatus)))
   (commands
    :reader commands
    :initarg :commands
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0)))
)

(cl:defclass IONodeStatus (<IONodeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IONodeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IONodeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IONodeStatus> is deprecated: use intera_core_msgs-msg:IONodeStatus instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <IONodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:time-val is deprecated.  Use intera_core_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <IONodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:node-val is deprecated.  Use intera_core_msgs-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'devices-val :lambda-list '(m))
(cl:defmethod devices-val ((m <IONodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:devices-val is deprecated.  Use intera_core_msgs-msg:devices instead.")
  (devices m))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <IONodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:commands-val is deprecated.  Use intera_core_msgs-msg:commands instead.")
  (commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IONodeStatus>) ostream)
  "Serializes a message object of type '<IONodeStatus>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'commands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'commands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IONodeStatus>) istream)
  "Deserializes a message object of type '<IONodeStatus>"
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
    (cl:setf (cl:aref vals i) (cl:make-instance 'intera_core_msgs-msg:IOComponentStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'commands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'commands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IONodeStatus>)))
  "Returns string type for a message object of type '<IONodeStatus>"
  "intera_core_msgs/IONodeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IONodeStatus)))
  "Returns string type for a message object of type 'IONodeStatus"
  "intera_core_msgs/IONodeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IONodeStatus>)))
  "Returns md5sum for a message object of type '<IONodeStatus>"
  "260fce3c02f43bd977c92642b3c09c1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IONodeStatus)))
  "Returns md5sum for a message object of type 'IONodeStatus"
  "260fce3c02f43bd977c92642b3c09c1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IONodeStatus>)))
  "Returns full string definition for message of type '<IONodeStatus>"
  (cl:format cl:nil "# IO Node Status~%time time                    # time the message was created~%IOComponentStatus node       # IO Node status~%IOComponentStatus[] devices  # status of IO Devices in this node~%time[] commands              # recent command timestamps, for syncing~%================================================================================~%MSG: intera_core_msgs/IOComponentStatus~%## IO Component status data~%string name            # component name~%IOStatus status        # component status~%#~%~%~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IONodeStatus)))
  "Returns full string definition for message of type 'IONodeStatus"
  (cl:format cl:nil "# IO Node Status~%time time                    # time the message was created~%IOComponentStatus node       # IO Node status~%IOComponentStatus[] devices  # status of IO Devices in this node~%time[] commands              # recent command timestamps, for syncing~%================================================================================~%MSG: intera_core_msgs/IOComponentStatus~%## IO Component status data~%string name            # component name~%IOStatus status        # component status~%#~%~%~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IONodeStatus>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'devices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IONodeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'IONodeStatus
    (cl:cons ':time (time msg))
    (cl:cons ':node (node msg))
    (cl:cons ':devices (devices msg))
    (cl:cons ':commands (commands msg))
))
