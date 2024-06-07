;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::MotionStatus)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'MotionStatus (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS")
  (make-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotionStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MOTION_IDLE*" (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(shadow '*MOTION_IDLE* (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(defconstant intera_motion_msgs::MotionStatus::*MOTION_IDLE* "idle")
(intern "*MOTION_PENDING*" (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(shadow '*MOTION_PENDING* (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(defconstant intera_motion_msgs::MotionStatus::*MOTION_PENDING* "pending")
(intern "*MOTION_RUNNING*" (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(shadow '*MOTION_RUNNING* (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(defconstant intera_motion_msgs::MotionStatus::*MOTION_RUNNING* "running")
(intern "*MOTION_STOPPING*" (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(shadow '*MOTION_STOPPING* (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(defconstant intera_motion_msgs::MotionStatus::*MOTION_STOPPING* "stopping")
(intern "*MOTION_DONE*" (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(shadow '*MOTION_DONE* (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(defconstant intera_motion_msgs::MotionStatus::*MOTION_DONE* "done")
(intern "*MOTION_PREEMPTED*" (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(shadow '*MOTION_PREEMPTED* (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(defconstant intera_motion_msgs::MotionStatus::*MOTION_PREEMPTED* "preempted")
(intern "*MOTION_ERROR*" (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(shadow '*MOTION_ERROR* (find-package "INTERA_MOTION_MSGS::MOTIONSTATUS"))
(defconstant intera_motion_msgs::MotionStatus::*MOTION_ERROR* "error")

(defun intera_motion_msgs::MotionStatus-to-symbol (const)
  (cond
        (t nil)))

(defclass intera_motion_msgs::MotionStatus
  :super ros::object
  :slots (_header _motion_status _current_trajectory _current_waypoint _motion_request ))

(defmethod intera_motion_msgs::MotionStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motion_status __motion_status) "")
    ((:current_trajectory __current_trajectory) "")
    ((:current_waypoint __current_waypoint) 0)
    ((:motion_request __motion_request) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _motion_status (string __motion_status))
   (setq _current_trajectory (string __current_trajectory))
   (setq _current_waypoint (round __current_waypoint))
   (setq _motion_request (round __motion_request))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motion_status
   (&optional __motion_status)
   (if __motion_status (setq _motion_status __motion_status)) _motion_status)
  (:current_trajectory
   (&optional __current_trajectory)
   (if __current_trajectory (setq _current_trajectory __current_trajectory)) _current_trajectory)
  (:current_waypoint
   (&optional __current_waypoint)
   (if __current_waypoint (setq _current_waypoint __current_waypoint)) _current_waypoint)
  (:motion_request
   (&optional __motion_request)
   (if __motion_request (setq _motion_request __motion_request)) _motion_request)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _motion_status
    4 (length _motion_status)
    ;; string _current_trajectory
    4 (length _current_trajectory)
    ;; uint32 _current_waypoint
    4
    ;; uint32 _motion_request
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _motion_status
       (write-long (length _motion_status) s) (princ _motion_status s)
     ;; string _current_trajectory
       (write-long (length _current_trajectory) s) (princ _current_trajectory s)
     ;; uint32 _current_waypoint
       (write-long _current_waypoint s)
     ;; uint32 _motion_request
       (write-long _motion_request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _motion_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _motion_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_trajectory
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_trajectory (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _current_waypoint
     (setq _current_waypoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _motion_request
     (setq _motion_request (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get intera_motion_msgs::MotionStatus :md5sum-) "178c2a9a52d756f9d73396be4ec1a07c")
(setf (get intera_motion_msgs::MotionStatus :datatype-) "intera_motion_msgs/MotionStatus")
(setf (get intera_motion_msgs::MotionStatus :definition-)
      "# motion status
Header header
string motion_status
string current_trajectory
uint32 current_waypoint
uint32 motion_request

# motion_status enum values:
string MOTION_IDLE=idle
string MOTION_PENDING=pending
string MOTION_RUNNING=running
string MOTION_STOPPING=stopping
string MOTION_DONE=done
string MOTION_PREEMPTED=preempted
string MOTION_ERROR=error

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :intera_motion_msgs/MotionStatus "178c2a9a52d756f9d73396be4ec1a07c")


