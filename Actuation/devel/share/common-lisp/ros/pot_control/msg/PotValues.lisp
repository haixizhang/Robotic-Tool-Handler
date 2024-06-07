; Auto-generated. Do not edit!


(cl:in-package pot_control-msg)


;//! \htmlinclude PotValues.msg.html

(cl:defclass <PotValues> (roslisp-msg-protocol:ros-message)
  ((potvalues
    :reader potvalues
    :initarg :potvalues
    :type (cl:vector pot_control-msg:PotValue)
   :initform (cl:make-array 0 :element-type 'pot_control-msg:PotValue :initial-element (cl:make-instance 'pot_control-msg:PotValue))))
)

(cl:defclass PotValues (<PotValues>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PotValues>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PotValues)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pot_control-msg:<PotValues> is deprecated: use pot_control-msg:PotValues instead.")))

(cl:ensure-generic-function 'potvalues-val :lambda-list '(m))
(cl:defmethod potvalues-val ((m <PotValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pot_control-msg:potvalues-val is deprecated.  Use pot_control-msg:potvalues instead.")
  (potvalues m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PotValues>) ostream)
  "Serializes a message object of type '<PotValues>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'potvalues))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'potvalues))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PotValues>) istream)
  "Deserializes a message object of type '<PotValues>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'potvalues) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'potvalues)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pot_control-msg:PotValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PotValues>)))
  "Returns string type for a message object of type '<PotValues>"
  "pot_control/PotValues")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PotValues)))
  "Returns string type for a message object of type 'PotValues"
  "pot_control/PotValues")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PotValues>)))
  "Returns md5sum for a message object of type '<PotValues>"
  "6e183ac20561a041ec8e4a989a1a2404")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PotValues)))
  "Returns md5sum for a message object of type 'PotValues"
  "6e183ac20561a041ec8e4a989a1a2404")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PotValues>)))
  "Returns full string definition for message of type '<PotValues>"
  (cl:format cl:nil "PotValue[] potvalues~%~%================================================================================~%MSG: pot_control/PotValue~%float32[2] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PotValues)))
  "Returns full string definition for message of type 'PotValues"
  (cl:format cl:nil "PotValue[] potvalues~%~%================================================================================~%MSG: pot_control/PotValue~%float32[2] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PotValues>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'potvalues) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PotValues>))
  "Converts a ROS message object to a list"
  (cl:list 'PotValues
    (cl:cons ':potvalues (potvalues msg))
))
