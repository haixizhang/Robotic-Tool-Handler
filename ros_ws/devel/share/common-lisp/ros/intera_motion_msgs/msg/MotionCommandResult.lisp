; Auto-generated. Do not edit!


(cl:in-package intera_motion_msgs-msg)


;//! \htmlinclude MotionCommandResult.msg.html

(cl:defclass <MotionCommandResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (errorId
    :reader errorId
    :initarg :errorId
    :type cl:string
    :initform "")
   (trajectory_analysis
    :reader trajectory_analysis
    :initarg :trajectory_analysis
    :type intera_motion_msgs-msg:TrajectoryAnalysis
    :initform (cl:make-instance 'intera_motion_msgs-msg:TrajectoryAnalysis))
   (last_successful_waypoint
    :reader last_successful_waypoint
    :initarg :last_successful_waypoint
    :type cl:integer
    :initform 0))
)

(cl:defclass MotionCommandResult (<MotionCommandResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionCommandResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionCommandResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_motion_msgs-msg:<MotionCommandResult> is deprecated: use intera_motion_msgs-msg:MotionCommandResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MotionCommandResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:result-val is deprecated.  Use intera_motion_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'errorId-val :lambda-list '(m))
(cl:defmethod errorId-val ((m <MotionCommandResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:errorId-val is deprecated.  Use intera_motion_msgs-msg:errorId instead.")
  (errorId m))

(cl:ensure-generic-function 'trajectory_analysis-val :lambda-list '(m))
(cl:defmethod trajectory_analysis-val ((m <MotionCommandResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:trajectory_analysis-val is deprecated.  Use intera_motion_msgs-msg:trajectory_analysis instead.")
  (trajectory_analysis m))

(cl:ensure-generic-function 'last_successful_waypoint-val :lambda-list '(m))
(cl:defmethod last_successful_waypoint-val ((m <MotionCommandResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_motion_msgs-msg:last_successful_waypoint-val is deprecated.  Use intera_motion_msgs-msg:last_successful_waypoint instead.")
  (last_successful_waypoint m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MotionCommandResult>)))
    "Constants for message type '<MotionCommandResult>"
  '((:FAILED_TO_PARAMETERIZE . "FAILED_TO_PARAMETERIZE")
    (:PLANNED_MOTION_COLLISION . "PLANNED_MOTION_COLLISION")
    (:INVALID_TRAJECTORY_MESSAGE . "INVALID_TRAJECTORY_MESSAGE")
    (:ENDPOINT_DOES_NOT_EXIST . "ENDPOINT_DOES_NOT_EXIST")
    (:CARTESIAN_INTERPOLATION_FAILED . "CARTESIAN_INTERPOLATION_FAILED")
    (:FINAL_POSE_NOT_WITHIN_TOLERANCE . "FINAL_POSE_NOT_WITHIN_TOLERANCE")
    (:CONTROLLER_NOT_FOLLOWING . "CONTROLLER_NOT_FOLLOWING")
    (:ZERO_G_ACTIVATED_DURING_TRAJECTORY . "ZERO_G_ACTIVATED_DURING_TRAJECTORY")
    (:PLANNED_JOINT_ACCEL_LIMIT . "PLANNED_JOINT_ACCEL_LIMIT")
    (:HAVE_NOT_REACHED_FIRST_WAYPOINT . -1)
    (:GENERAL_TRAJECTORY_FAILURE . -2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MotionCommandResult)))
    "Constants for message type 'MotionCommandResult"
  '((:FAILED_TO_PARAMETERIZE . "FAILED_TO_PARAMETERIZE")
    (:PLANNED_MOTION_COLLISION . "PLANNED_MOTION_COLLISION")
    (:INVALID_TRAJECTORY_MESSAGE . "INVALID_TRAJECTORY_MESSAGE")
    (:ENDPOINT_DOES_NOT_EXIST . "ENDPOINT_DOES_NOT_EXIST")
    (:CARTESIAN_INTERPOLATION_FAILED . "CARTESIAN_INTERPOLATION_FAILED")
    (:FINAL_POSE_NOT_WITHIN_TOLERANCE . "FINAL_POSE_NOT_WITHIN_TOLERANCE")
    (:CONTROLLER_NOT_FOLLOWING . "CONTROLLER_NOT_FOLLOWING")
    (:ZERO_G_ACTIVATED_DURING_TRAJECTORY . "ZERO_G_ACTIVATED_DURING_TRAJECTORY")
    (:PLANNED_JOINT_ACCEL_LIMIT . "PLANNED_JOINT_ACCEL_LIMIT")
    (:HAVE_NOT_REACHED_FIRST_WAYPOINT . -1)
    (:GENERAL_TRAJECTORY_FAILURE . -2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionCommandResult>) ostream)
  "Serializes a message object of type '<MotionCommandResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'errorId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'errorId))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_analysis) ostream)
  (cl:let* ((signed (cl:slot-value msg 'last_successful_waypoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionCommandResult>) istream)
  "Deserializes a message object of type '<MotionCommandResult>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'errorId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'errorId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_analysis) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_successful_waypoint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionCommandResult>)))
  "Returns string type for a message object of type '<MotionCommandResult>"
  "intera_motion_msgs/MotionCommandResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionCommandResult)))
  "Returns string type for a message object of type 'MotionCommandResult"
  "intera_motion_msgs/MotionCommandResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionCommandResult>)))
  "Returns md5sum for a message object of type '<MotionCommandResult>"
  "481449bf41047922d4c99f513b0dd227")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionCommandResult)))
  "Returns md5sum for a message object of type 'MotionCommandResult"
  "481449bf41047922d4c99f513b0dd227")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionCommandResult>)))
  "Returns full string definition for message of type '<MotionCommandResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result~%bool result~%~%string errorId~%string FAILED_TO_PARAMETERIZE=FAILED_TO_PARAMETERIZE~%string PLANNED_MOTION_COLLISION=PLANNED_MOTION_COLLISION~%string INVALID_TRAJECTORY_MESSAGE=INVALID_TRAJECTORY_MESSAGE~%string ENDPOINT_DOES_NOT_EXIST=ENDPOINT_DOES_NOT_EXIST~%string CARTESIAN_INTERPOLATION_FAILED=CARTESIAN_INTERPOLATION_FAILED~%string FINAL_POSE_NOT_WITHIN_TOLERANCE=FINAL_POSE_NOT_WITHIN_TOLERANCE~%string CONTROLLER_NOT_FOLLOWING=CONTROLLER_NOT_FOLLOWING~%string ZERO_G_ACTIVATED_DURING_TRAJECTORY=ZERO_G_ACTIVATED_DURING_TRAJECTORY~%string PLANNED_JOINT_ACCEL_LIMIT=PLANNED_JOINT_ACCEL_LIMIT~%~%TrajectoryAnalysis trajectory_analysis~%~%int32 last_successful_waypoint~%int32 HAVE_NOT_REACHED_FIRST_WAYPOINT=-1~%int32 GENERAL_TRAJECTORY_FAILURE=-2~%~%~%================================================================================~%MSG: intera_motion_msgs/TrajectoryAnalysis~%# The duration of the reference trajectory, as originally planned~%float64 planned_duration~%~%# The measured duration of the trajectory, as executed~%float64 measured_duration~%~%# Minimum commanded angle during trajectory for each joint~%float64[] min_angle_command~%~%# Maximum commanded angle during trajectory for each joint~%float64[] max_angle_command~%~%# Peak speed command = max(abs(reference velocity)) for each joint~%float64[] peak_speed_command~%~%# Peak accel command = max(abs(reference acceleration)) for each joint~%float64[] peak_accel_command~%~%# Peak jerk command = max(abs(reference jerk)) for each joint~%float64[] peak_jerk_command~%~%# Minimum trajectory time rate observed~%float64 min_time_rate~%~%# Maximium trajectory time rate observed~%float64 max_time_rate~%~%# Max joint position error = max(abs(position error)) for each joint~%float64[] max_position_error~%~%# Max joint velocity error = max(abs(velocity error)) for each joint~%float64[] max_velocity_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionCommandResult)))
  "Returns full string definition for message of type 'MotionCommandResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result~%bool result~%~%string errorId~%string FAILED_TO_PARAMETERIZE=FAILED_TO_PARAMETERIZE~%string PLANNED_MOTION_COLLISION=PLANNED_MOTION_COLLISION~%string INVALID_TRAJECTORY_MESSAGE=INVALID_TRAJECTORY_MESSAGE~%string ENDPOINT_DOES_NOT_EXIST=ENDPOINT_DOES_NOT_EXIST~%string CARTESIAN_INTERPOLATION_FAILED=CARTESIAN_INTERPOLATION_FAILED~%string FINAL_POSE_NOT_WITHIN_TOLERANCE=FINAL_POSE_NOT_WITHIN_TOLERANCE~%string CONTROLLER_NOT_FOLLOWING=CONTROLLER_NOT_FOLLOWING~%string ZERO_G_ACTIVATED_DURING_TRAJECTORY=ZERO_G_ACTIVATED_DURING_TRAJECTORY~%string PLANNED_JOINT_ACCEL_LIMIT=PLANNED_JOINT_ACCEL_LIMIT~%~%TrajectoryAnalysis trajectory_analysis~%~%int32 last_successful_waypoint~%int32 HAVE_NOT_REACHED_FIRST_WAYPOINT=-1~%int32 GENERAL_TRAJECTORY_FAILURE=-2~%~%~%================================================================================~%MSG: intera_motion_msgs/TrajectoryAnalysis~%# The duration of the reference trajectory, as originally planned~%float64 planned_duration~%~%# The measured duration of the trajectory, as executed~%float64 measured_duration~%~%# Minimum commanded angle during trajectory for each joint~%float64[] min_angle_command~%~%# Maximum commanded angle during trajectory for each joint~%float64[] max_angle_command~%~%# Peak speed command = max(abs(reference velocity)) for each joint~%float64[] peak_speed_command~%~%# Peak accel command = max(abs(reference acceleration)) for each joint~%float64[] peak_accel_command~%~%# Peak jerk command = max(abs(reference jerk)) for each joint~%float64[] peak_jerk_command~%~%# Minimum trajectory time rate observed~%float64 min_time_rate~%~%# Maximium trajectory time rate observed~%float64 max_time_rate~%~%# Max joint position error = max(abs(position error)) for each joint~%float64[] max_position_error~%~%# Max joint velocity error = max(abs(velocity error)) for each joint~%float64[] max_velocity_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionCommandResult>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'errorId))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_analysis))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionCommandResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionCommandResult
    (cl:cons ':result (result msg))
    (cl:cons ':errorId (errorId msg))
    (cl:cons ':trajectory_analysis (trajectory_analysis msg))
    (cl:cons ':last_successful_waypoint (last_successful_waypoint msg))
))
