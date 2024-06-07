; Auto-generated. Do not edit!


(cl:in-package intera_motion_msgs-msg)


;//! \htmlinclude Waypoint.msg.html

(cl:defclass <Waypoint> (roslisp-msg-protocol:ros-message)
  ((joint_positions
    :reader joint_positions
    :initarg :joint_positions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (active_endpoint
    :reader active_endpoint
    :initarg :active_endpoint
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (options
    :reader options
    :initarg :options
    :type intera_motion_msgs-msg:WaypointOptions
    :initform (cl:make-instance 'intera_motion_msgs-msg:WaypointOptions)))
)

(cl:defclass Waypoint (<Waypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Waypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Waypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_motion_msgs-msg:<Waypoint> is deprecated: use intera_motion_msgs-msg:Waypoint instead.")))

(cl:ensure-generic-function 'joint_positions-val :lambda-list '(m))
(cl:defmethod joint_positions-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:joint_positions-val is deprecated.  Use intera_motion_msgs-msg:joint_positions instead.")
  (joint_positions m))

(cl:ensure-generic-function 'active_endpoint-val :lambda-list '(m))
(cl:defmethod active_endpoint-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:active_endpoint-val is deprecated.  Use intera_motion_msgs-msg:active_endpoint instead.")
  (active_endpoint m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:pose-val is deprecated.  Use intera_motion_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'options-val :lambda-list '(m))
(cl:defmethod options-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:options-val is deprecated.  Use intera_motion_msgs-msg:options instead.")
  (options m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Waypoint>) ostream)
  "Serializes a message object of type '<Waypoint>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_positions))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_endpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_endpoint))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'options) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Waypoint>) istream)
  "Deserializes a message object of type '<Waypoint>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_endpoint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_endpoint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'options) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Waypoint>)))
  "Returns string type for a message object of type '<Waypoint>"
  "intera_motion_msgs/Waypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Waypoint)))
  "Returns string type for a message object of type 'Waypoint"
  "intera_motion_msgs/Waypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Waypoint>)))
  "Returns md5sum for a message object of type '<Waypoint>"
  "8284b290b22204acc5e4d8000467b033")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Waypoint)))
  "Returns md5sum for a message object of type 'Waypoint"
  "8284b290b22204acc5e4d8000467b033")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Waypoint>)))
  "Returns full string definition for message of type '<Waypoint>"
  (cl:format cl:nil "# Representation of a waypoint used by the motion controller~%~%# Desired joint positions~%# For Cartesian segments, the joint positions are used as nullspace biases~%float64[] joint_positions~%~%# Name of the endpoint that is currently active~%string active_endpoint~%~%# Cartesian pose~%# This is not used in trajectories using joint interpolation~%geometry_msgs/PoseStamped pose~%~%# Waypoint specific options~%# Default values will be used if not set~%# All waypoint options are applied to the segment moving to that waypoint~%WaypointOptions options~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: intera_motion_msgs/WaypointOptions~%# Optional waypoint label~%string label~%~%# Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)~%float64 max_joint_speed_ratio~%~%# Slowdown heuristic is triggered if tracking error exceeds tolerances - radians~%float64[] joint_tolerances~%~%# Maximum accelerations for each joint (only for joint paths) - rad/s^2.~%float64[] max_joint_accel~%~%~%###########################################################~%# The remaining parameters only apply to Cartesian paths~%~%# Maximum linear speed of endpoint - m/s~%float64 max_linear_speed~%~%# Maximum linear acceleration of endpoint - m/s^2~%float64 max_linear_accel~%~%# Maximum rotational speed of endpoint - rad/s~%float64 max_rotational_speed~%~%# Maximum rotational acceleration of endpoint - rad/s^2~%float64 max_rotational_accel~%~%# Used for smoothing corners for continuous motion - m~%# The distance from the waypoint to where the curve starts while blending from~%# one straight line segment to the next.~%# Larger distance:  trajectory passes farther from the waypoint at a higher speed~%# Smaller distance:  trajectory passes closer to the waypoint at a lower speed~%# Zero distance:  trajectory passes through the waypoint at zero speed~%float64 corner_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Waypoint)))
  "Returns full string definition for message of type 'Waypoint"
  (cl:format cl:nil "# Representation of a waypoint used by the motion controller~%~%# Desired joint positions~%# For Cartesian segments, the joint positions are used as nullspace biases~%float64[] joint_positions~%~%# Name of the endpoint that is currently active~%string active_endpoint~%~%# Cartesian pose~%# This is not used in trajectories using joint interpolation~%geometry_msgs/PoseStamped pose~%~%# Waypoint specific options~%# Default values will be used if not set~%# All waypoint options are applied to the segment moving to that waypoint~%WaypointOptions options~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: intera_motion_msgs/WaypointOptions~%# Optional waypoint label~%string label~%~%# Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)~%float64 max_joint_speed_ratio~%~%# Slowdown heuristic is triggered if tracking error exceeds tolerances - radians~%float64[] joint_tolerances~%~%# Maximum accelerations for each joint (only for joint paths) - rad/s^2.~%float64[] max_joint_accel~%~%~%###########################################################~%# The remaining parameters only apply to Cartesian paths~%~%# Maximum linear speed of endpoint - m/s~%float64 max_linear_speed~%~%# Maximum linear acceleration of endpoint - m/s^2~%float64 max_linear_accel~%~%# Maximum rotational speed of endpoint - rad/s~%float64 max_rotational_speed~%~%# Maximum rotational acceleration of endpoint - rad/s^2~%float64 max_rotational_accel~%~%# Used for smoothing corners for continuous motion - m~%# The distance from the waypoint to where the curve starts while blending from~%# one straight line segment to the next.~%# Larger distance:  trajectory passes farther from the waypoint at a higher speed~%# Smaller distance:  trajectory passes closer to the waypoint at a lower speed~%# Zero distance:  trajectory passes through the waypoint at zero speed~%float64 corner_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Waypoint>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'active_endpoint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'options))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Waypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'Waypoint
    (cl:cons ':joint_positions (joint_positions msg))
    (cl:cons ':active_endpoint (active_endpoint msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':options (options msg))
))
