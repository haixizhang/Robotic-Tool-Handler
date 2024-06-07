; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IODataStatus.msg.html

(cl:defclass <IODataStatus> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (format
    :reader format
    :initarg :format
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type intera_core_msgs-msg:IOStatus
    :initform (cl:make-instance 'intera_core_msgs-msg:IOStatus)))
)

(cl:defclass IODataStatus (<IODataStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IODataStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IODataStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IODataStatus> is deprecated: use intera_core_msgs-msg:IODataStatus instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <IODataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:name-val is deprecated.  Use intera_core_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'format-val :lambda-list '(m))
(cl:defmethod format-val ((m <IODataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:format-val is deprecated.  Use intera_core_msgs-msg:format instead.")
  (format m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <IODataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:data-val is deprecated.  Use intera_core_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <IODataStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:status-val is deprecated.  Use intera_core_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IODataStatus>) ostream)
  "Serializes a message object of type '<IODataStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'format))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'format))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IODataStatus>) istream)
  "Deserializes a message object of type '<IODataStatus>"
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
      (cl:setf (cl:slot-value msg 'format) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'format) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IODataStatus>)))
  "Returns string type for a message object of type '<IODataStatus>"
  "intera_core_msgs/IODataStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IODataStatus)))
  "Returns string type for a message object of type 'IODataStatus"
  "intera_core_msgs/IODataStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IODataStatus>)))
  "Returns md5sum for a message object of type '<IODataStatus>"
  "bb31283c6afc4ddea2f5f157264e5909")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IODataStatus)))
  "Returns md5sum for a message object of type 'IODataStatus"
  "bb31283c6afc4ddea2f5f157264e5909")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IODataStatus>)))
  "Returns full string definition for message of type '<IODataStatus>"
  (cl:format cl:nil "## IO Data Status~%string name       # IO Data Component name~%string format     # data format:~%                  # A JSON object containing one or more of the following fields:~%                  # Required:~%                  #   \"type\" : \"<type>\"  JSON Type, one of:~%                  #                      \"bool\", \"int\", \"float\", \"string\", \"object\", \"array\"~%                  #~%                  # Optional:~%                  #   \"dimensions\" : [ N,...] if absent, [ 1 ] is assumed.~%                  #   \"role\"       : Signal: \"input\", \"output\"; Port:  \"sink\", \"source\"~%                  #   \"data_type\"  : qualifier for the JSON type, may be device-specific~%                  #                  int data_types:  \"uN\", \"sN\", \"NqM\"~%                  #   other device-specific qualifiers may be used and will be passed through.~%string data       # JSON data value.  An Array is expected, for example \"[ 0 ]\"~%IOStatus status   # Data Component status~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IODataStatus)))
  "Returns full string definition for message of type 'IODataStatus"
  (cl:format cl:nil "## IO Data Status~%string name       # IO Data Component name~%string format     # data format:~%                  # A JSON object containing one or more of the following fields:~%                  # Required:~%                  #   \"type\" : \"<type>\"  JSON Type, one of:~%                  #                      \"bool\", \"int\", \"float\", \"string\", \"object\", \"array\"~%                  #~%                  # Optional:~%                  #   \"dimensions\" : [ N,...] if absent, [ 1 ] is assumed.~%                  #   \"role\"       : Signal: \"input\", \"output\"; Port:  \"sink\", \"source\"~%                  #   \"data_type\"  : qualifier for the JSON type, may be device-specific~%                  #                  int data_types:  \"uN\", \"sN\", \"NqM\"~%                  #   other device-specific qualifiers may be used and will be passed through.~%string data       # JSON data value.  An Array is expected, for example \"[ 0 ]\"~%IOStatus status   # Data Component status~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IODataStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'format))
     4 (cl:length (cl:slot-value msg 'data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IODataStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'IODataStatus
    (cl:cons ':name (name msg))
    (cl:cons ':format (format msg))
    (cl:cons ':data (data msg))
    (cl:cons ':status (status msg))
))
