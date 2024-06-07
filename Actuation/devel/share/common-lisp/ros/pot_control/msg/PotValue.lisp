; Auto-generated. Do not edit!


(cl:in-package pot_control-msg)


;//! \htmlinclude PotValue.msg.html

(cl:defclass <PotValue> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PotValue (<PotValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PotValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PotValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pot_control-msg:<PotValue> is deprecated: use pot_control-msg:PotValue instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <PotValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pot_control-msg:values-val is deprecated.  Use pot_control-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PotValue>) ostream)
  "Serializes a message object of type '<PotValue>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PotValue>) istream)
  "Deserializes a message object of type '<PotValue>"
  (cl:setf (cl:slot-value msg 'values) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PotValue>)))
  "Returns string type for a message object of type '<PotValue>"
  "pot_control/PotValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PotValue)))
  "Returns string type for a message object of type 'PotValue"
  "pot_control/PotValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PotValue>)))
  "Returns md5sum for a message object of type '<PotValue>"
  "c334281ada2d017b8a6955b9529fd69a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PotValue)))
  "Returns md5sum for a message object of type 'PotValue"
  "c334281ada2d017b8a6955b9529fd69a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PotValue>)))
  "Returns full string definition for message of type '<PotValue>"
  (cl:format cl:nil "float32[2] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PotValue)))
  "Returns full string definition for message of type 'PotValue"
  (cl:format cl:nil "float32[2] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PotValue>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PotValue>))
  "Converts a ROS message object to a list"
  (cl:list 'PotValue
    (cl:cons ':values (values msg))
))
