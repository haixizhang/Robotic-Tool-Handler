; Auto-generated. Do not edit!


(cl:in-package intera_motion_msgs-msg)


;//! \htmlinclude InterpolatedPath.msg.html

(cl:defclass <InterpolatedPath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (interpolated_path
    :reader interpolated_path
    :initarg :interpolated_path
    :type (cl:vector intera_motion_msgs-msg:WaypointSimple)
   :initform (cl:make-array 0 :element-type 'intera_motion_msgs-msg:WaypointSimple :initial-element (cl:make-instance 'intera_motion_msgs-msg:WaypointSimple))))
)

(cl:defclass InterpolatedPath (<InterpolatedPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterpolatedPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterpolatedPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_motion_msgs-msg:<InterpolatedPath> is deprecated: use intera_motion_msgs-msg:InterpolatedPath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InterpolatedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:header-val is deprecated.  Use intera_motion_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <InterpolatedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:label-val is deprecated.  Use intera_motion_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <InterpolatedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:joint_names-val is deprecated.  Use intera_motion_msgs-msg:joint_names instead.")
  (joint_names m))

(cl:ensure-generic-function 'interpolated_path-val :lambda-list '(m))
(cl:defmethod interpolated_path-val ((m <InterpolatedPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:interpolated_path-val is deprecated.  Use intera_motion_msgs-msg:interpolated_path instead.")
  (interpolated_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterpolatedPath>) ostream)
  "Serializes a message object of type '<InterpolatedPath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
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
   (cl:slot-value msg 'joint_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'interpolated_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'interpolated_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterpolatedPath>) istream)
  "Deserializes a message object of type '<InterpolatedPath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'interpolated_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'interpolated_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'intera_motion_msgs-msg:WaypointSimple))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterpolatedPath>)))
  "Returns string type for a message object of type '<InterpolatedPath>"
  "intera_motion_msgs/InterpolatedPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterpolatedPath)))
  "Returns string type for a message object of type 'InterpolatedPath"
  "intera_motion_msgs/InterpolatedPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterpolatedPath>)))
  "Returns md5sum for a message object of type '<InterpolatedPath>"
  "4e078bdc2ed88b86420f5b19cbd78219")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterpolatedPath)))
  "Returns md5sum for a message object of type 'InterpolatedPath"
  "4e078bdc2ed88b86420f5b19cbd78219")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterpolatedPath>)))
  "Returns full string definition for message of type '<InterpolatedPath>"
  (cl:format cl:nil "# Inpteroplation of a path generated by the motion controller~%~%std_msgs/Header header~%~%# optional label~%string label~%~%# Array of joint names that correspond to the waypoint joint_positions~%string[] joint_names~%~%# Array of waypoints interpolated from the generated path~%WaypointSimple[] interpolated_path~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: intera_motion_msgs/WaypointSimple~%# Representation of a waypoint returned during path interpolation~%# Does not include extra options~%~%# Desired joint positions~%float64[] joint_positions~%~%# Name of the endpoint that is currently active~%string active_endpoint~%~%# Cartesian pose~%geometry_msgs/Pose pose~%~%int32 segment_index~%float64 time~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterpolatedPath)))
  "Returns full string definition for message of type 'InterpolatedPath"
  (cl:format cl:nil "# Inpteroplation of a path generated by the motion controller~%~%std_msgs/Header header~%~%# optional label~%string label~%~%# Array of joint names that correspond to the waypoint joint_positions~%string[] joint_names~%~%# Array of waypoints interpolated from the generated path~%WaypointSimple[] interpolated_path~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: intera_motion_msgs/WaypointSimple~%# Representation of a waypoint returned during path interpolation~%# Does not include extra options~%~%# Desired joint positions~%float64[] joint_positions~%~%# Name of the endpoint that is currently active~%string active_endpoint~%~%# Cartesian pose~%geometry_msgs/Pose pose~%~%int32 segment_index~%float64 time~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterpolatedPath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'label))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'interpolated_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterpolatedPath>))
  "Converts a ROS message object to a list"
  (cl:list 'InterpolatedPath
    (cl:cons ':header (header msg))
    (cl:cons ':label (label msg))
    (cl:cons ':joint_names (joint_names msg))
    (cl:cons ':interpolated_path (interpolated_path msg))
))
