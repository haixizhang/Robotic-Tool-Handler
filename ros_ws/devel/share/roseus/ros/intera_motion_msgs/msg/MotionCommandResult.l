;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::MotionCommandResult)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'MotionCommandResult (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT")
  (make-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))

(in-package "ROS")
;;//! \htmlinclude MotionCommandResult.msg.html


(intern "*FAILED_TO_PARAMETERIZE*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*FAILED_TO_PARAMETERIZE* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*FAILED_TO_PARAMETERIZE* "FAILED_TO_PARAMETERIZE")
(intern "*PLANNED_MOTION_COLLISION*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*PLANNED_MOTION_COLLISION* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*PLANNED_MOTION_COLLISION* "PLANNED_MOTION_COLLISION")
(intern "*INVALID_TRAJECTORY_MESSAGE*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*INVALID_TRAJECTORY_MESSAGE* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*INVALID_TRAJECTORY_MESSAGE* "INVALID_TRAJECTORY_MESSAGE")
(intern "*ENDPOINT_DOES_NOT_EXIST*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*ENDPOINT_DOES_NOT_EXIST* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*ENDPOINT_DOES_NOT_EXIST* "ENDPOINT_DOES_NOT_EXIST")
(intern "*CARTESIAN_INTERPOLATION_FAILED*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*CARTESIAN_INTERPOLATION_FAILED* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*CARTESIAN_INTERPOLATION_FAILED* "CARTESIAN_INTERPOLATION_FAILED")
(intern "*FINAL_POSE_NOT_WITHIN_TOLERANCE*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*FINAL_POSE_NOT_WITHIN_TOLERANCE* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*FINAL_POSE_NOT_WITHIN_TOLERANCE* "FINAL_POSE_NOT_WITHIN_TOLERANCE")
(intern "*CONTROLLER_NOT_FOLLOWING*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*CONTROLLER_NOT_FOLLOWING* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*CONTROLLER_NOT_FOLLOWING* "CONTROLLER_NOT_FOLLOWING")
(intern "*ZERO_G_ACTIVATED_DURING_TRAJECTORY*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*ZERO_G_ACTIVATED_DURING_TRAJECTORY* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*ZERO_G_ACTIVATED_DURING_TRAJECTORY* "ZERO_G_ACTIVATED_DURING_TRAJECTORY")
(intern "*PLANNED_JOINT_ACCEL_LIMIT*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*PLANNED_JOINT_ACCEL_LIMIT* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*PLANNED_JOINT_ACCEL_LIMIT* "PLANNED_JOINT_ACCEL_LIMIT")
(intern "*HAVE_NOT_REACHED_FIRST_WAYPOINT*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*HAVE_NOT_REACHED_FIRST_WAYPOINT* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*HAVE_NOT_REACHED_FIRST_WAYPOINT* -1)
(intern "*GENERAL_TRAJECTORY_FAILURE*" (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(shadow '*GENERAL_TRAJECTORY_FAILURE* (find-package "INTERA_MOTION_MSGS::MOTIONCOMMANDRESULT"))
(defconstant intera_motion_msgs::MotionCommandResult::*GENERAL_TRAJECTORY_FAILURE* -2)

(defun intera_motion_msgs::MotionCommandResult-to-symbol (const)
  (cond
        ((= const -1) 'intera_motion_msgs::MotionCommandResult::*HAVE_NOT_REACHED_FIRST_WAYPOINT*)
        ((= const -2) 'intera_motion_msgs::MotionCommandResult::*GENERAL_TRAJECTORY_FAILURE*)
        (t nil)))

(defclass intera_motion_msgs::MotionCommandResult
  :super ros::object
  :slots (_result _errorId _trajectory_analysis _last_successful_waypoint ))

(defmethod intera_motion_msgs::MotionCommandResult
  (:init
   (&key
    ((:result __result) nil)
    ((:errorId __errorId) "")
    ((:trajectory_analysis __trajectory_analysis) (instance intera_motion_msgs::TrajectoryAnalysis :init))
    ((:last_successful_waypoint __last_successful_waypoint) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _errorId (string __errorId))
   (setq _trajectory_analysis __trajectory_analysis)
   (setq _last_successful_waypoint (round __last_successful_waypoint))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:errorId
   (&optional __errorId)
   (if __errorId (setq _errorId __errorId)) _errorId)
  (:trajectory_analysis
   (&rest __trajectory_analysis)
   (if (keywordp (car __trajectory_analysis))
       (send* _trajectory_analysis __trajectory_analysis)
     (progn
       (if __trajectory_analysis (setq _trajectory_analysis (car __trajectory_analysis)))
       _trajectory_analysis)))
  (:last_successful_waypoint
   (&optional __last_successful_waypoint)
   (if __last_successful_waypoint (setq _last_successful_waypoint __last_successful_waypoint)) _last_successful_waypoint)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _errorId
    4 (length _errorId)
    ;; intera_motion_msgs/TrajectoryAnalysis _trajectory_analysis
    (send _trajectory_analysis :serialization-length)
    ;; int32 _last_successful_waypoint
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _errorId
       (write-long (length _errorId) s) (princ _errorId s)
     ;; intera_motion_msgs/TrajectoryAnalysis _trajectory_analysis
       (send _trajectory_analysis :serialize s)
     ;; int32 _last_successful_waypoint
       (write-long _last_successful_waypoint s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _errorId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _errorId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; intera_motion_msgs/TrajectoryAnalysis _trajectory_analysis
     (send _trajectory_analysis :deserialize buf ptr-) (incf ptr- (send _trajectory_analysis :serialization-length))
   ;; int32 _last_successful_waypoint
     (setq _last_successful_waypoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get intera_motion_msgs::MotionCommandResult :md5sum-) "481449bf41047922d4c99f513b0dd227")
(setf (get intera_motion_msgs::MotionCommandResult :datatype-) "intera_motion_msgs/MotionCommandResult")
(setf (get intera_motion_msgs::MotionCommandResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# result
bool result

string errorId
string FAILED_TO_PARAMETERIZE=FAILED_TO_PARAMETERIZE
string PLANNED_MOTION_COLLISION=PLANNED_MOTION_COLLISION
string INVALID_TRAJECTORY_MESSAGE=INVALID_TRAJECTORY_MESSAGE
string ENDPOINT_DOES_NOT_EXIST=ENDPOINT_DOES_NOT_EXIST
string CARTESIAN_INTERPOLATION_FAILED=CARTESIAN_INTERPOLATION_FAILED
string FINAL_POSE_NOT_WITHIN_TOLERANCE=FINAL_POSE_NOT_WITHIN_TOLERANCE
string CONTROLLER_NOT_FOLLOWING=CONTROLLER_NOT_FOLLOWING
string ZERO_G_ACTIVATED_DURING_TRAJECTORY=ZERO_G_ACTIVATED_DURING_TRAJECTORY
string PLANNED_JOINT_ACCEL_LIMIT=PLANNED_JOINT_ACCEL_LIMIT

TrajectoryAnalysis trajectory_analysis

int32 last_successful_waypoint
int32 HAVE_NOT_REACHED_FIRST_WAYPOINT=-1
int32 GENERAL_TRAJECTORY_FAILURE=-2


================================================================================
MSG: intera_motion_msgs/TrajectoryAnalysis
# The duration of the reference trajectory, as originally planned
float64 planned_duration

# The measured duration of the trajectory, as executed
float64 measured_duration

# Minimum commanded angle during trajectory for each joint
float64[] min_angle_command

# Maximum commanded angle during trajectory for each joint
float64[] max_angle_command

# Peak speed command = max(abs(reference velocity)) for each joint
float64[] peak_speed_command

# Peak accel command = max(abs(reference acceleration)) for each joint
float64[] peak_accel_command

# Peak jerk command = max(abs(reference jerk)) for each joint
float64[] peak_jerk_command

# Minimum trajectory time rate observed
float64 min_time_rate

# Maximium trajectory time rate observed
float64 max_time_rate

# Max joint position error = max(abs(position error)) for each joint
float64[] max_position_error

# Max joint velocity error = max(abs(velocity error)) for each joint
float64[] max_velocity_error

")



(provide :intera_motion_msgs/MotionCommandResult "481449bf41047922d4c99f513b0dd227")


