; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-srv)


;//! \htmlinclude IOComponentCommandSrv-request.msg.html

(cl:defclass <IOComponentCommandSrv-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type intera_core_msgs-msg:IOComponentCommand
    :initform (cl:make-instance 'intera_core_msgs-msg:IOComponentCommand))
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0))
)

(cl:defclass IOComponentCommandSrv-request (<IOComponentCommandSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOComponentCommandSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOComponentCommandSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-srv:<IOComponentCommandSrv-request> is deprecated: use intera_core_msgs-srv:IOComponentCommandSrv-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <IOComponentCommandSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:command-val is deprecated.  Use intera_core_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <IOComponentCommandSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:timeout-val is deprecated.  Use intera_core_msgs-srv:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOComponentCommandSrv-request>) ostream)
  "Serializes a message object of type '<IOComponentCommandSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOComponentCommandSrv-request>) istream)
  "Deserializes a message object of type '<IOComponentCommandSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOComponentCommandSrv-request>)))
  "Returns string type for a service object of type '<IOComponentCommandSrv-request>"
  "intera_core_msgs/IOComponentCommandSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOComponentCommandSrv-request)))
  "Returns string type for a service object of type 'IOComponentCommandSrv-request"
  "intera_core_msgs/IOComponentCommandSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOComponentCommandSrv-request>)))
  "Returns md5sum for a message object of type '<IOComponentCommandSrv-request>"
  "bcb324504e5e34d907a1b6d881f436cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOComponentCommandSrv-request)))
  "Returns md5sum for a message object of type 'IOComponentCommandSrv-request"
  "bcb324504e5e34d907a1b6d881f436cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOComponentCommandSrv-request>)))
  "Returns full string definition for message of type '<IOComponentCommandSrv-request>"
  (cl:format cl:nil "## IO Component Command service call~%IOComponentCommand command~%float32 timeout  # max seconds to handle the request, default used if 0.0~%~%================================================================================~%MSG: intera_core_msgs/IOComponentCommand~%## IO Component Command~%time time      # time the message was created, serves as a sequence number~%string op      # operation to perform~%string args    # JSON arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOComponentCommandSrv-request)))
  "Returns full string definition for message of type 'IOComponentCommandSrv-request"
  (cl:format cl:nil "## IO Component Command service call~%IOComponentCommand command~%float32 timeout  # max seconds to handle the request, default used if 0.0~%~%================================================================================~%MSG: intera_core_msgs/IOComponentCommand~%## IO Component Command~%time time      # time the message was created, serves as a sequence number~%string op      # operation to perform~%string args    # JSON arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOComponentCommandSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOComponentCommandSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IOComponentCommandSrv-request
    (cl:cons ':command (command msg))
    (cl:cons ':timeout (timeout msg))
))
;//! \htmlinclude IOComponentCommandSrv-response.msg.html

(cl:defclass <IOComponentCommandSrv-response> (roslisp-msg-protocol:ros-message)
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
   (status
    :reader status
    :initarg :status
    :type intera_core_msgs-msg:IOStatus
    :initform (cl:make-instance 'intera_core_msgs-msg:IOStatus))
   (response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass IOComponentCommandSrv-response (<IOComponentCommandSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOComponentCommandSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOComponentCommandSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-srv:<IOComponentCommandSrv-response> is deprecated: use intera_core_msgs-srv:IOComponentCommandSrv-response instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <IOComponentCommandSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:time-val is deprecated.  Use intera_core_msgs-srv:time instead.")
  (time m))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <IOComponentCommandSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:op-val is deprecated.  Use intera_core_msgs-srv:op instead.")
  (op m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <IOComponentCommandSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:status-val is deprecated.  Use intera_core_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <IOComponentCommandSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:response-val is deprecated.  Use intera_core_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOComponentCommandSrv-response>) ostream)
  "Serializes a message object of type '<IOComponentCommandSrv-response>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOComponentCommandSrv-response>) istream)
  "Deserializes a message object of type '<IOComponentCommandSrv-response>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOComponentCommandSrv-response>)))
  "Returns string type for a service object of type '<IOComponentCommandSrv-response>"
  "intera_core_msgs/IOComponentCommandSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOComponentCommandSrv-response)))
  "Returns string type for a service object of type 'IOComponentCommandSrv-response"
  "intera_core_msgs/IOComponentCommandSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOComponentCommandSrv-response>)))
  "Returns md5sum for a message object of type '<IOComponentCommandSrv-response>"
  "bcb324504e5e34d907a1b6d881f436cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOComponentCommandSrv-response)))
  "Returns md5sum for a message object of type 'IOComponentCommandSrv-response"
  "bcb324504e5e34d907a1b6d881f436cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOComponentCommandSrv-response>)))
  "Returns full string definition for message of type '<IOComponentCommandSrv-response>"
  (cl:format cl:nil "time time               # time the request was handled, serves as a sequence number~%string op               # operation performed~%IOStatus status         # status response~%string response         # (OPTIONAL) command-specific response JSON data (e.g. resulting config)~%~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOComponentCommandSrv-response)))
  "Returns full string definition for message of type 'IOComponentCommandSrv-response"
  (cl:format cl:nil "time time               # time the request was handled, serves as a sequence number~%string op               # operation performed~%IOStatus status         # status response~%string response         # (OPTIONAL) command-specific response JSON data (e.g. resulting config)~%~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOComponentCommandSrv-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'op))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOComponentCommandSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IOComponentCommandSrv-response
    (cl:cons ':time (time msg))
    (cl:cons ':op (op msg))
    (cl:cons ':status (status msg))
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IOComponentCommandSrv)))
  'IOComponentCommandSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IOComponentCommandSrv)))
  'IOComponentCommandSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOComponentCommandSrv)))
  "Returns string type for a service object of type '<IOComponentCommandSrv>"
  "intera_core_msgs/IOComponentCommandSrv")