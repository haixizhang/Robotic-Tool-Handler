; Auto-generated. Do not edit!


(cl:in-package voice_recognition_pkg-msg)


;//! \htmlinclude VerbNounPair.msg.html

(cl:defclass <VerbNounPair> (roslisp-msg-protocol:ros-message)
  ((verb
    :reader verb
    :initarg :verb
    :type cl:integer
    :initform 0)
   (noun
    :reader noun
    :initarg :noun
    :type cl:integer
    :initform 0))
)

(cl:defclass VerbNounPair (<VerbNounPair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VerbNounPair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VerbNounPair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name voice_recognition_pkg-msg:<VerbNounPair> is deprecated: use voice_recognition_pkg-msg:VerbNounPair instead.")))

(cl:ensure-generic-function 'verb-val :lambda-list '(m))
(cl:defmethod verb-val ((m <VerbNounPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voice_recognition_pkg-msg:verb-val is deprecated.  Use voice_recognition_pkg-msg:verb instead.")
  (verb m))

(cl:ensure-generic-function 'noun-val :lambda-list '(m))
(cl:defmethod noun-val ((m <VerbNounPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader voice_recognition_pkg-msg:noun-val is deprecated.  Use voice_recognition_pkg-msg:noun instead.")
  (noun m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VerbNounPair>) ostream)
  "Serializes a message object of type '<VerbNounPair>"
  (cl:let* ((signed (cl:slot-value msg 'verb)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'noun)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VerbNounPair>) istream)
  "Deserializes a message object of type '<VerbNounPair>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'verb) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noun) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VerbNounPair>)))
  "Returns string type for a message object of type '<VerbNounPair>"
  "voice_recognition_pkg/VerbNounPair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerbNounPair)))
  "Returns string type for a message object of type 'VerbNounPair"
  "voice_recognition_pkg/VerbNounPair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VerbNounPair>)))
  "Returns md5sum for a message object of type '<VerbNounPair>"
  "3bdf7358f298eae1a5f20bdac9f65d0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VerbNounPair)))
  "Returns md5sum for a message object of type 'VerbNounPair"
  "3bdf7358f298eae1a5f20bdac9f65d0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VerbNounPair>)))
  "Returns full string definition for message of type '<VerbNounPair>"
  (cl:format cl:nil "int32 verb~%int32 noun~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VerbNounPair)))
  "Returns full string definition for message of type 'VerbNounPair"
  (cl:format cl:nil "int32 verb~%int32 noun~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VerbNounPair>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VerbNounPair>))
  "Converts a ROS message object to a list"
  (cl:list 'VerbNounPair
    (cl:cons ':verb (verb msg))
    (cl:cons ':noun (noun msg))
))
