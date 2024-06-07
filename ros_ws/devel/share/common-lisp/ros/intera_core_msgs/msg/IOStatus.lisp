; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IOStatus.msg.html

(cl:defclass <IOStatus> (roslisp-msg-protocol:ros-message)
  ((tag
    :reader tag
    :initarg :tag
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (detail
    :reader detail
    :initarg :detail
    :type cl:string
    :initform ""))
)

(cl:defclass IOStatus (<IOStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IOStatus> is deprecated: use intera_core_msgs-msg:IOStatus instead.")))

(cl:ensure-generic-function 'tag-val :lambda-list '(m))
(cl:defmethod tag-val ((m <IOStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:tag-val is deprecated.  Use intera_core_msgs-msg:tag instead.")
  (tag m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <IOStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:id-val is deprecated.  Use intera_core_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'detail-val :lambda-list '(m))
(cl:defmethod detail-val ((m <IOStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:detail-val is deprecated.  Use intera_core_msgs-msg:detail instead.")
  (detail m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IOStatus>)))
    "Constants for message type '<IOStatus>"
  '((:DOWN . "down")
    (:READY . "ready")
    (:BUSY . "busy")
    (:UNREADY . "unready")
    (:ERROR . "error"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IOStatus)))
    "Constants for message type 'IOStatus"
  '((:DOWN . "down")
    (:READY . "ready")
    (:BUSY . "busy")
    (:UNREADY . "unready")
    (:ERROR . "error"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOStatus>) ostream)
  "Serializes a message object of type '<IOStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detail))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOStatus>) istream)
  "Deserializes a message object of type '<IOStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detail) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detail) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOStatus>)))
  "Returns string type for a message object of type '<IOStatus>"
  "intera_core_msgs/IOStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOStatus)))
  "Returns string type for a message object of type 'IOStatus"
  "intera_core_msgs/IOStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOStatus>)))
  "Returns md5sum for a message object of type '<IOStatus>"
  "a8daeb84c9abffc88ad8ca636f5fd8a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOStatus)))
  "Returns md5sum for a message object of type 'IOStatus"
  "a8daeb84c9abffc88ad8ca636f5fd8a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOStatus>)))
  "Returns full string definition for message of type '<IOStatus>"
  (cl:format cl:nil "## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOStatus)))
  "Returns full string definition for message of type 'IOStatus"
  (cl:format cl:nil "## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag))
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'detail))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'IOStatus
    (cl:cons ':tag (tag msg))
    (cl:cons ':id (id msg))
    (cl:cons ':detail (detail msg))
))
