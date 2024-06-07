; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-srv)


;//! \htmlinclude SolvePositionFK-request.msg.html

(cl:defclass <SolvePositionFK-request> (roslisp-msg-protocol:ros-message)
  ((configuration
    :reader configuration
    :initarg :configuration
    :type (cl:vector sensor_msgs-msg:JointState)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:JointState :initial-element (cl:make-instance 'sensor_msgs-msg:JointState)))
   (tip_names
    :reader tip_names
    :initarg :tip_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SolvePositionFK-request (<SolvePositionFK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolvePositionFK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolvePositionFK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-srv:<SolvePositionFK-request> is deprecated: use intera_core_msgs-srv:SolvePositionFK-request instead.")))

(cl:ensure-generic-function 'configuration-val :lambda-list '(m))
(cl:defmethod configuration-val ((m <SolvePositionFK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:configuration-val is deprecated.  Use intera_core_msgs-srv:configuration instead.")
  (configuration m))

(cl:ensure-generic-function 'tip_names-val :lambda-list '(m))
(cl:defmethod tip_names-val ((m <SolvePositionFK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:tip_names-val is deprecated.  Use intera_core_msgs-srv:tip_names instead.")
  (tip_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolvePositionFK-request>) ostream)
  "Serializes a message object of type '<SolvePositionFK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'configuration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'configuration))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tip_names))))
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
   (cl:slot-value msg 'tip_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolvePositionFK-request>) istream)
  "Deserializes a message object of type '<SolvePositionFK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'configuration) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'configuration)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:JointState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tip_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tip_names)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolvePositionFK-request>)))
  "Returns string type for a service object of type '<SolvePositionFK-request>"
  "intera_core_msgs/SolvePositionFKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolvePositionFK-request)))
  "Returns string type for a service object of type 'SolvePositionFK-request"
  "intera_core_msgs/SolvePositionFKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolvePositionFK-request>)))
  "Returns md5sum for a message object of type '<SolvePositionFK-request>"
  "6db8c7b904dcebec9a59022cd894ef68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolvePositionFK-request)))
  "Returns md5sum for a message object of type 'SolvePositionFK-request"
  "6db8c7b904dcebec9a59022cd894ef68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolvePositionFK-request>)))
  "Returns full string definition for message of type '<SolvePositionFK-request>"
  (cl:format cl:nil "# Joint positions(s) to request Forward-Kinematics joint solutions for~%sensor_msgs/JointState[] configuration~%~%# Tip name for each pose FK~%string[] tip_names~%~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolvePositionFK-request)))
  "Returns full string definition for message of type 'SolvePositionFK-request"
  (cl:format cl:nil "# Joint positions(s) to request Forward-Kinematics joint solutions for~%sensor_msgs/JointState[] configuration~%~%# Tip name for each pose FK~%string[] tip_names~%~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolvePositionFK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'configuration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tip_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolvePositionFK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SolvePositionFK-request
    (cl:cons ':configuration (configuration msg))
    (cl:cons ':tip_names (tip_names msg))
))
;//! \htmlinclude SolvePositionFK-response.msg.html

(cl:defclass <SolvePositionFK-response> (roslisp-msg-protocol:ros-message)
  ((pose_stamp
    :reader pose_stamp
    :initarg :pose_stamp
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (isValid
    :reader isValid
    :initarg :isValid
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (inCollision
    :reader inCollision
    :initarg :inCollision
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass SolvePositionFK-response (<SolvePositionFK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolvePositionFK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolvePositionFK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-srv:<SolvePositionFK-response> is deprecated: use intera_core_msgs-srv:SolvePositionFK-response instead.")))

(cl:ensure-generic-function 'pose_stamp-val :lambda-list '(m))
(cl:defmethod pose_stamp-val ((m <SolvePositionFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:pose_stamp-val is deprecated.  Use intera_core_msgs-srv:pose_stamp instead.")
  (pose_stamp m))

(cl:ensure-generic-function 'isValid-val :lambda-list '(m))
(cl:defmethod isValid-val ((m <SolvePositionFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:isValid-val is deprecated.  Use intera_core_msgs-srv:isValid instead.")
  (isValid m))

(cl:ensure-generic-function 'inCollision-val :lambda-list '(m))
(cl:defmethod inCollision-val ((m <SolvePositionFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-srv:inCollision-val is deprecated.  Use intera_core_msgs-srv:inCollision instead.")
  (inCollision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolvePositionFK-response>) ostream)
  "Serializes a message object of type '<SolvePositionFK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_stamp))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'isValid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'isValid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'inCollision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'inCollision))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolvePositionFK-response>) istream)
  "Deserializes a message object of type '<SolvePositionFK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_stamp) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_stamp)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'isValid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'isValid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'inCollision) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'inCollision)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolvePositionFK-response>)))
  "Returns string type for a service object of type '<SolvePositionFK-response>"
  "intera_core_msgs/SolvePositionFKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolvePositionFK-response)))
  "Returns string type for a service object of type 'SolvePositionFK-response"
  "intera_core_msgs/SolvePositionFKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolvePositionFK-response>)))
  "Returns md5sum for a message object of type '<SolvePositionFK-response>"
  "6db8c7b904dcebec9a59022cd894ef68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolvePositionFK-response)))
  "Returns md5sum for a message object of type 'SolvePositionFK-response"
  "6db8c7b904dcebec9a59022cd894ef68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolvePositionFK-response>)))
  "Returns full string definition for message of type '<SolvePositionFK-response>"
  (cl:format cl:nil "~%# Solution(s) per FK call~%geometry_msgs/PoseStamped[] pose_stamp~%bool[] isValid~%bool[] inCollision~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolvePositionFK-response)))
  "Returns full string definition for message of type 'SolvePositionFK-response"
  (cl:format cl:nil "~%# Solution(s) per FK call~%geometry_msgs/PoseStamped[] pose_stamp~%bool[] isValid~%bool[] inCollision~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolvePositionFK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_stamp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'isValid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'inCollision) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolvePositionFK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SolvePositionFK-response
    (cl:cons ':pose_stamp (pose_stamp msg))
    (cl:cons ':isValid (isValid msg))
    (cl:cons ':inCollision (inCollision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SolvePositionFK)))
  'SolvePositionFK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SolvePositionFK)))
  'SolvePositionFK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolvePositionFK)))
  "Returns string type for a service object of type '<SolvePositionFK>"
  "intera_core_msgs/SolvePositionFK")