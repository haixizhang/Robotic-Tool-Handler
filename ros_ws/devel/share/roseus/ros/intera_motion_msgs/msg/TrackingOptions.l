;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::TrackingOptions)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'TrackingOptions (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::TRACKINGOPTIONS")
  (make-package "INTERA_MOTION_MSGS::TRACKINGOPTIONS"))

(in-package "ROS")
;;//! \htmlinclude TrackingOptions.msg.html


(defclass intera_motion_msgs::TrackingOptions
  :super ros::object
  :slots (_use_min_time_rate _min_time_rate _use_max_time_rate _max_time_rate _goal_joint_tolerance _use_settling_time_at_goal _settling_time_at_goal ))

(defmethod intera_motion_msgs::TrackingOptions
  (:init
   (&key
    ((:use_min_time_rate __use_min_time_rate) nil)
    ((:min_time_rate __min_time_rate) 0.0)
    ((:use_max_time_rate __use_max_time_rate) nil)
    ((:max_time_rate __max_time_rate) 0.0)
    ((:goal_joint_tolerance __goal_joint_tolerance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:use_settling_time_at_goal __use_settling_time_at_goal) nil)
    ((:settling_time_at_goal __settling_time_at_goal) 0.0)
    )
   (send-super :init)
   (setq _use_min_time_rate __use_min_time_rate)
   (setq _min_time_rate (float __min_time_rate))
   (setq _use_max_time_rate __use_max_time_rate)
   (setq _max_time_rate (float __max_time_rate))
   (setq _goal_joint_tolerance __goal_joint_tolerance)
   (setq _use_settling_time_at_goal __use_settling_time_at_goal)
   (setq _settling_time_at_goal (float __settling_time_at_goal))
   self)
  (:use_min_time_rate
   (&optional (__use_min_time_rate :null))
   (if (not (eq __use_min_time_rate :null)) (setq _use_min_time_rate __use_min_time_rate)) _use_min_time_rate)
  (:min_time_rate
   (&optional __min_time_rate)
   (if __min_time_rate (setq _min_time_rate __min_time_rate)) _min_time_rate)
  (:use_max_time_rate
   (&optional (__use_max_time_rate :null))
   (if (not (eq __use_max_time_rate :null)) (setq _use_max_time_rate __use_max_time_rate)) _use_max_time_rate)
  (:max_time_rate
   (&optional __max_time_rate)
   (if __max_time_rate (setq _max_time_rate __max_time_rate)) _max_time_rate)
  (:goal_joint_tolerance
   (&optional __goal_joint_tolerance)
   (if __goal_joint_tolerance (setq _goal_joint_tolerance __goal_joint_tolerance)) _goal_joint_tolerance)
  (:use_settling_time_at_goal
   (&optional (__use_settling_time_at_goal :null))
   (if (not (eq __use_settling_time_at_goal :null)) (setq _use_settling_time_at_goal __use_settling_time_at_goal)) _use_settling_time_at_goal)
  (:settling_time_at_goal
   (&optional __settling_time_at_goal)
   (if __settling_time_at_goal (setq _settling_time_at_goal __settling_time_at_goal)) _settling_time_at_goal)
  (:serialization-length
   ()
   (+
    ;; bool _use_min_time_rate
    1
    ;; float64 _min_time_rate
    8
    ;; bool _use_max_time_rate
    1
    ;; float64 _max_time_rate
    8
    ;; float64[] _goal_joint_tolerance
    (* 8    (length _goal_joint_tolerance)) 4
    ;; bool _use_settling_time_at_goal
    1
    ;; float64 _settling_time_at_goal
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _use_min_time_rate
       (if _use_min_time_rate (write-byte -1 s) (write-byte 0 s))
     ;; float64 _min_time_rate
       (sys::poke _min_time_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _use_max_time_rate
       (if _use_max_time_rate (write-byte -1 s) (write-byte 0 s))
     ;; float64 _max_time_rate
       (sys::poke _max_time_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _goal_joint_tolerance
     (write-long (length _goal_joint_tolerance) s)
     (dotimes (i (length _goal_joint_tolerance))
       (sys::poke (elt _goal_joint_tolerance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _use_settling_time_at_goal
       (if _use_settling_time_at_goal (write-byte -1 s) (write-byte 0 s))
     ;; float64 _settling_time_at_goal
       (sys::poke _settling_time_at_goal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _use_min_time_rate
     (setq _use_min_time_rate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _min_time_rate
     (setq _min_time_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _use_max_time_rate
     (setq _use_max_time_rate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _max_time_rate
     (setq _max_time_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _goal_joint_tolerance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_joint_tolerance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_joint_tolerance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _use_settling_time_at_goal
     (setq _use_settling_time_at_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _settling_time_at_goal
     (setq _settling_time_at_goal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get intera_motion_msgs::TrackingOptions :md5sum-) "e848e8a266b514c3bde707d0e1859055")
(setf (get intera_motion_msgs::TrackingOptions :datatype-) "intera_motion_msgs/TrackingOptions")
(setf (get intera_motion_msgs::TrackingOptions :definition-)
      "# Minimum trajectory tracking time rate:  (default = less than one)
bool     use_min_time_rate
float64  min_time_rate

# Maximum trajectory tracking time rate:  (1.0 = real-time = default)
bool     use_max_time_rate
float64  max_time_rate

# Angular error tolerance at final point on trajectory (rad)
float64[] goal_joint_tolerance

# Time for the controller to settle within joint tolerances at the goal (sec)
bool     use_settling_time_at_goal
float64  settling_time_at_goal

")



(provide :intera_motion_msgs/TrackingOptions "e848e8a266b514c3bde707d0e1859055")


