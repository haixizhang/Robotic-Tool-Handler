; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IOComponentStatus.msg.html

(cl:defclass <IOComponentStatus> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type intera_core_msgs-msg:IOStatus
    :initform (cl:make-instance 'intera_core_msgs-msg:IOStatus)))
)

(cl:defclass IOComponentStatus (<IOComponentStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOComponentStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOComponentStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IOComponentStatus> is deprecated: use intera_core_msgs-msg:IOComponentStatus instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <IOComponentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:name-val is deprecated.  Use intera_core_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <IOComponentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:status-val is deprecated.  Use intera_core_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOComponentStatus>) ostream)
  "Serializes a message object of type '<IOComponentStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOComponentStatus>) istream)
  "Deserializes a message object of type '<IOComponentStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOComponentStatus>)))
  "Returns string type for a message object of type '<IOComponentStatus>"
  "intera_core_msgs/IOComponentStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOComponentStatus)))
  "Returns string type for a message object of type 'IOComponentStatus"
  "intera_core_msgs/IOComponentStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOComponentStatus>)))
  "Returns md5sum for a message object of type '<IOComponentStatus>"
  "7daed407477edd76573df598b0375a48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOComponentStatus)))
  "Returns md5sum for a message object of type 'IOComponentStatus"
  "7daed407477edd76573df598b0375a48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOComponentStatus>)))
  "Returns full string definition for message of type '<IOComponentStatus>"
  (cl:format cl:nil "## IO Component status data~%string name            # component name~%IOStatus status        # component status~%#~%~%~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOComponentStatus)))
  "Returns full string definition for message of type 'IOComponentStatus"
  (cl:format cl:nil "## IO Component status data~%string name            # component name~%IOStatus status        # component status~%#~%~%~%~%================================================================================~%MSG: intera_core_msgs/IOStatus~%## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string id             # message id, for internationalization~%#~%string detail         # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOComponentStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOComponentStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'IOComponentStatus
    (cl:cons ':name (name msg))
    (cl:cons ':status (status msg))
))
