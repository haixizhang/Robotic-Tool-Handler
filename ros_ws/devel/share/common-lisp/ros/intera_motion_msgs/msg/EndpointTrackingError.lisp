; Auto-generated. Do not edit!


(cl:in-package intera_motion_msgs-msg)


;//! \htmlinclude EndpointTrackingError.msg.html

(cl:defclass <EndpointTrackingError> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trajectory_id
    :reader trajectory_id
    :initarg :trajectory_id
    :type cl:integer
    :initform 0)
   (trajectory_time
    :reader trajectory_time
    :initarg :trajectory_time
    :type cl:float
    :initform 0.0)
   (active_endpoint
    :reader active_endpoint
    :initarg :active_endpoint
    :type cl:string
    :initform "")
   (pose_error
    :reader pose_error
    :initarg :pose_error
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (twist_error
    :reader twist_error
    :initarg :twist_error
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (pose_command
    :reader pose_command
    :initarg :pose_command
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (twist_command
    :reader twist_command
    :initarg :twist_command
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass EndpointTrackingError (<EndpointTrackingError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EndpointTrackingError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EndpointTrackingError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_motion_msgs-msg:<EndpointTrackingError> is deprecated: use intera_motion_msgs-msg:EndpointTrackingError instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EndpointTrackingError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:header-val is deprecated.  Use intera_motion_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trajectory_id-val :lambda-list '(m))
(cl:defmethod trajectory_id-val ((m <EndpointTrackingError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:trajectory_id-val is deprecated.  Use intera_motion_msgs-msg:trajectory_id instead.")
  (trajectory_id m))

(cl:ensure-generic-function 'trajectory_time-val :lambda-list '(m))
(cl:defmethod trajectory_time-val ((m <EndpointTrackingError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:trajectory_time-val is deprecated.  Use intera_motion_msgs-msg:trajectory_time instead.")
  (trajectory_time m))

(cl:ensure-generic-function 'active_endpoint-val :lambda-list '(m))
(cl:defmethod active_endpoint-val ((m <EndpointTrackingError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:active_endpoint-val is deprecated.  Use intera_motion_msgs-msg:active_endpoint instead.")
  (active_endpoint m))

(cl:ensure-generic-function 'pose_error-val :lambda-list '(m))
(cl:defmethod pose_error-val ((m <EndpointTrackingError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:pose_error-val is deprecated.  Use intera_motion_msgs-msg:pose_error instead.")
  (pose_error m))

(cl:ensure-generic-function 'twist_error-val :lambda-list '(m))
(cl:defmethod twist_error-val ((m <EndpointTrackingError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:twist_error-val is deprecated.  Use intera_motion_msgs-msg:twist_error instead.")
  (twist_error m))

(cl:ensure-generic-function 'pose_command-val :lambda-list '(m))
(cl:defmethod pose_command-val ((m <EndpointTrackingError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:pose_command-val is deprecated.  Use intera_motion_msgs-msg:pose_command instead.")
  (pose_command m))

(cl:ensure-generic-function 'twist_command-val :lambda-list '(m))
(cl:defmethod twist_command-val ((m <EndpointTrackingError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:twist_command-val is deprecated.  Use intera_motion_msgs-msg:twist_command instead.")
  (twist_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EndpointTrackingError>) ostream)
  "Serializes a message object of type '<EndpointTrackingError>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'trajectory_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_endpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_endpoint))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist_command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EndpointTrackingError>) istream)
  "Deserializes a message object of type '<EndpointTrackingError>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'trajectory_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_endpoint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_endpoint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist_command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EndpointTrackingError>)))
  "Returns string type for a message object of type '<EndpointTrackingError>"
  "intera_motion_msgs/EndpointTrackingError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndpointTrackingError)))
  "Returns string type for a message object of type 'EndpointTrackingError"
  "intera_motion_msgs/EndpointTrackingError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EndpointTrackingError>)))
  "Returns md5sum for a message object of type '<EndpointTrackingError>"
  "c266cbf60fc5f871b5909394c05032fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EndpointTrackingError)))
  "Returns md5sum for a message object of type 'EndpointTrackingError"
  "c266cbf60fc5f871b5909394c05032fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EndpointTrackingError>)))
  "Returns full string definition for message of type '<EndpointTrackingError>"
  (cl:format cl:nil "# This message will be published from the TrackingController~%# It contains the endpoint tracking error data for diagnostics.~%Header header~%~%# ID for the trajectory.~%uint32 trajectory_id~%~%# Reference time since start of trajectory in seconds.~%float64 trajectory_time~%~%# Name of the endpoint that is currently active (coordinate frame name)~%string active_endpoint~%~%# pose_error transforms from pose_command to pose_measured~%# units: translation (meters) ; orientation (quaternion)~%geometry_msgs/Pose pose_error~%~%# twist_error = twist_measured) - twist_command~%# units: linear (meters) ; angular (radians per second)~%geometry_msgs/Twist twist_error~%~%# pose that is commanded at the active_endpoint~%# units: translation (meters) ; orientation (quaternion)~%geometry_msgs/Pose pose_command~%~%# twist that is commanded at the active_endpoint~%# units: linear (meters) ; angular (radians per second)~%geometry_msgs/Twist twist_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EndpointTrackingError)))
  "Returns full string definition for message of type 'EndpointTrackingError"
  (cl:format cl:nil "# This message will be published from the TrackingController~%# It contains the endpoint tracking error data for diagnostics.~%Header header~%~%# ID for the trajectory.~%uint32 trajectory_id~%~%# Reference time since start of trajectory in seconds.~%float64 trajectory_time~%~%# Name of the endpoint that is currently active (coordinate frame name)~%string active_endpoint~%~%# pose_error transforms from pose_command to pose_measured~%# units: translation (meters) ; orientation (quaternion)~%geometry_msgs/Pose pose_error~%~%# twist_error = twist_measured) - twist_command~%# units: linear (meters) ; angular (radians per second)~%geometry_msgs/Twist twist_error~%~%# pose that is commanded at the active_endpoint~%# units: translation (meters) ; orientation (quaternion)~%geometry_msgs/Pose pose_command~%~%# twist that is commanded at the active_endpoint~%# units: linear (meters) ; angular (radians per second)~%geometry_msgs/Twist twist_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EndpointTrackingError>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     4 (cl:length (cl:slot-value msg 'active_endpoint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EndpointTrackingError>))
  "Converts a ROS message object to a list"
  (cl:list 'EndpointTrackingError
    (cl:cons ':header (header msg))
    (cl:cons ':trajectory_id (trajectory_id msg))
    (cl:cons ':trajectory_time (trajectory_time msg))
    (cl:cons ':active_endpoint (active_endpoint msg))
    (cl:cons ':pose_error (pose_error msg))
    (cl:cons ':twist_error (twist_error msg))
    (cl:cons ':pose_command (pose_command msg))
    (cl:cons ':twist_command (twist_command msg))
))
