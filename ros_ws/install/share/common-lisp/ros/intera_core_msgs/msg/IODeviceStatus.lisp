; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IODeviceStatus.msg.html

(cl:defclass <IODeviceStatus> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (device
    :reader device
    :initarg :device
    :type intera_core_msgs-msg:IOComponentStatus
    :initform (cl:make-instance 'intera_core_msgs-msg:IOComponentStatus))
   (ports
    :reader ports
    :initarg :ports
    :type (cl:vector intera_core_msgs-msg:IODataStatus)
   :initform (cl:make-array 0 :element-type 'intera_core_msgs-msg:IODataStatus :initial-element (cl:make-instance 'intera_core_msgs-msg:IODataStatus)))
   (signals
    :reader signals
    :initarg :signals
    :type (cl:vector intera_core_msgs-msg:IODataStatus)
   :initform (cl:make-array 0 :element-type 'intera_core_msgs-msg:IODataStatus :initial-element (cl:make-instance 'intera_core_msgs-msg:IODataStatus)))
   (commands
    :reader commands
    :initarg :commands
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0))
   (responses
    :reader responses
    :initarg :responses
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass IODeviceStatus (<IODeviceStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IODeviceStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IODeviceStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IODeviceStatus> is deprecated: use intera_core_msgs-msg:IODeviceStatus instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <IODeviceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:time-val is deprecated.  Use intera_core_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'device-val :lambda-list '(m))
(cl:defmethod device-val ((m <IODeviceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:device-val is deprecated.  Use intera_core_msgs-msg:device instead.")
  (device m))

(cl:ensure-generic-function 'ports-val :lambda-list '(m))
(cl:defmethod ports-val ((m <IODeviceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:ports-val is deprecated.  Use intera_core_msgs-msg:ports instead.")
  (ports m))

(cl:ensure-generic-function 'signals-val :lambda-list '(m))
(cl:defmethod signals-val ((m <IODeviceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:signals-val is deprecated.  Use intera_core_msgs-msg:signals instead.")
  (signals m))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <IODeviceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:commands-val is deprecated.  Use intera_core_msgs-msg:commands instead.")
  (commands m))

(cl:ensure-generic-function 'responses-val :lambda-list '(m))
(cl:defmethod responses-val ((m <IODeviceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:responses-val is deprecated.  Use intera_core_msgs-msg:responses instead.")
  (responses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IODeviceStatus>) ostream)
  "Serializes a message object of type '<IODeviceStatus>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'device) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ports))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ports))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'signals))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'responses))))
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
   (cl:slot-value msg 'responses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IODeviceStatus>) istream)
  "Deserializes a message object of type '<IODeviceStatus>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'device) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ports) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ports)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'intera_core_msgs-msg:IODataStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'intera_core_msgs-msg:IODataStatus))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'responses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'responses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IODeviceStatus>)))
  "Returns string type for a message object of type '<IODeviceStatus>"
  "intera_core_msgs/IODeviceStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IODeviceStatus)))
  "Returns string type for a message object of type 'IODeviceStatus"
  "intera_core_msgs/IODeviceStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IODeviceStatus>)))
  "Returns md5sum for a message object of type '<IODeviceStatus>"
  "0d0c97a2d700848e7ad46e09a77cf896")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IODeviceStatus)))
  "Returns md5sum for a message object of type 'IODeviceStatus"
  "0d0c97a2d700848e7ad46e09a77cf896")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IODeviceStatus>)))
  "Returns full string definition for message of type '<IODeviceStatus>"
  (cl:format cl:nil "## IO Device status~%time time                  # time the message was created~%IOComponentStatus device   # device status data~%IODataStatus[]    ports    # Ports status~%IODataStatus[]    signals  # Signals status~%time[]            commands # recent command timestamps, for syncing~%string[]          responses # recent command responses~%~%~%================================================================================~%MSG: intera_core_msgs/IOComponentStatus~%## IO Component status data~%string name            # component name~%IOStatus status        # component status~%#~%~%~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%================================================================================~%MSG: intera_core_msgs/IODataStatus~%## IO Data Status~%string name       # IO Data Component name~%string format     # data format:~%                  # A JSON object containing one or more of the following fields:~%                  # Required:~%                  #   \"type\" : \"<type>\"  JSON Type, one of:~%                  #                      \"bool\", \"int\", \"float\", \"string\", \"object\", \"array\"~%                  #~%                  # Optional:~%                  #   \"dimensions\" : [ N,...] if absent, [ 1 ] is assumed.~%                  #   \"role\"       : Signal: \"input\", \"output\"; Port:  \"sink\", \"source\"~%                  #   \"data_type\"  : qualifier for the JSON type, may be device-specific~%                  #                  int data_types:  \"uN\", \"sN\", \"NqM\"~%                  #   other device-specific qualifiers may be used and will be passed through.~%string data       # JSON data value.  An Array is expected, for example \"[ 0 ]\"~%IOStatus status   # Data Component status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IODeviceStatus)))
  "Returns full string definition for message of type 'IODeviceStatus"
  (cl:format cl:nil "## IO Device status~%time time                  # time the message was created~%IOComponentStatus device   # device status data~%IODataStatus[]    ports    # Ports status~%IODataStatus[]    signals  # Signals status~%time[]            commands # recent command timestamps, for syncing~%string[]          responses # recent command responses~%~%~%================================================================================~%MSG: intera_core_msgs/IOComponentStatus~%## IO Component status data~%string name            # component name~%IOStatus status        # component status~%#~%~%~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%================================================================================~%MSG: intera_core_msgs/IODataStatus~%## IO Data Status~%string name       # IO Data Component name~%string format     # data format:~%                  # A JSON object containing one or more of the following fields:~%                  # Required:~%                  #   \"type\" : \"<type>\"  JSON Type, one of:~%                  #                      \"bool\", \"int\", \"float\", \"string\", \"object\", \"array\"~%                  #~%                  # Optional:~%                  #   \"dimensions\" : [ N,...] if absent, [ 1 ] is assumed.~%                  #   \"role\"       : Signal: \"input\", \"output\"; Port:  \"sink\", \"source\"~%                  #   \"data_type\"  : qualifier for the JSON type, may be device-specific~%                  #                  int data_types:  \"uN\", \"sN\", \"NqM\"~%                  #   other device-specific qualifiers may be used and will be passed through.~%string data       # JSON data value.  An Array is expected, for example \"[ 0 ]\"~%IOStatus status   # Data Component status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IODeviceStatus>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'device))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ports) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'responses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IODeviceStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'IODeviceStatus
    (cl:cons ':time (time msg))
    (cl:cons ':device (device msg))
    (cl:cons ':ports (ports msg))
    (cl:cons ':signals (signals msg))
    (cl:cons ':commands (commands msg))
    (cl:cons ':responses (responses msg))
))
