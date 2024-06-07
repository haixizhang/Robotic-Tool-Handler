; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude EndpointNamesArray.msg.html

(cl:defclass <EndpointNamesArray> (roslisp-msg-protocol:ros-message)
  ((endpoint_names
    :reader endpoint_names
    :initarg :endpoint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass EndpointNamesArray (<EndpointNamesArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EndpointNamesArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EndpointNamesArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<EndpointNamesArray> is deprecated: use intera_core_msgs-msg:EndpointNamesArray instead.")))

(cl:ensure-generic-function 'endpoint_names-val :lambda-list '(m))
(cl:defmethod endpoint_names-val ((m <EndpointNamesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:endpoint_names-val is deprecated.  Use intera_core_msgs-msg:endpoint_names instead.")
  (endpoint_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EndpointNamesArray>) ostream)
  "Serializes a message object of type '<EndpointNamesArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'endpoint_names))))
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
   (cl:slot-value msg 'endpoint_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EndpointNamesArray>) istream)
  "Deserializes a message object of type '<EndpointNamesArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'endpoint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'endpoint_names)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EndpointNamesArray>)))
  "Returns string type for a message object of type '<EndpointNamesArray>"
  "intera_core_msgs/EndpointNamesArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndpointNamesArray)))
  "Returns string type for a message object of type 'EndpointNamesArray"
  "intera_core_msgs/EndpointNamesArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EndpointNamesArray>)))
  "Returns md5sum for a message object of type '<EndpointNamesArray>"
  "6bf0a2d04056051f84da1291f261f35a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EndpointNamesArray)))
  "Returns md5sum for a message object of type 'EndpointNamesArray"
  "6bf0a2d04056051f84da1291f261f35a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EndpointNamesArray>)))
  "Returns full string definition for message of type '<EndpointNamesArray>"
  (cl:format cl:nil "string[] endpoint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EndpointNamesArray)))
  "Returns full string definition for message of type 'EndpointNamesArray"
  (cl:format cl:nil "string[] endpoint_names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EndpointNamesArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'endpoint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EndpointNamesArray>))
  "Converts a ROS message object to a list"
  (cl:list 'EndpointNamesArray
    (cl:cons ':endpoint_names (endpoint_names msg))
))
