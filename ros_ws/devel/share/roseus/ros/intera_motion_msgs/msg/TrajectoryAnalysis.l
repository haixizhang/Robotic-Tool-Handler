;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::TrajectoryAnalysis)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'TrajectoryAnalysis (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::TRAJECTORYANALYSIS")
  (make-package "INTERA_MOTION_MSGS::TRAJECTORYANALYSIS"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryAnalysis.msg.html


(defclass intera_motion_msgs::TrajectoryAnalysis
  :super ros::object
  :slots (_planned_duration _measured_duration _min_angle_command _max_angle_command _peak_speed_command _peak_accel_command _peak_jerk_command _min_time_rate _max_time_rate _max_position_error _max_velocity_error ))

(defmethod intera_motion_msgs::TrajectoryAnalysis
  (:init
   (&key
    ((:planned_duration __planned_duration) 0.0)
    ((:measured_duration __measured_duration) 0.0)
    ((:min_angle_command __min_angle_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_angle_command __max_angle_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:peak_speed_command __peak_speed_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:peak_accel_command __peak_accel_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:peak_jerk_command __peak_jerk_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:min_time_rate __min_time_rate) 0.0)
    ((:max_time_rate __max_time_rate) 0.0)
    ((:max_position_error __max_position_error) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_velocity_error __max_velocity_error) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _planned_duration (float __planned_duration))
   (setq _measured_duration (float __measured_duration))
   (setq _min_angle_command __min_angle_command)
   (setq _max_angle_command __max_angle_command)
   (setq _peak_speed_command __peak_speed_command)
   (setq _peak_accel_command __peak_accel_command)
   (setq _peak_jerk_command __peak_jerk_command)
   (setq _min_time_rate (float __min_time_rate))
   (setq _max_time_rate (float __max_time_rate))
   (setq _max_position_error __max_position_error)
   (setq _max_velocity_error __max_velocity_error)
   self)
  (:planned_duration
   (&optional __planned_duration)
   (if __planned_duration (setq _planned_duration __planned_duration)) _planned_duration)
  (:measured_duration
   (&optional __measured_duration)
   (if __measured_duration (setq _measured_duration __measured_duration)) _measured_duration)
  (:min_angle_command
   (&optional __min_angle_command)
   (if __min_angle_command (setq _min_angle_command __min_angle_command)) _min_angle_command)
  (:max_angle_command
   (&optional __max_angle_command)
   (if __max_angle_command (setq _max_angle_command __max_angle_command)) _max_angle_command)
  (:peak_speed_command
   (&optional __peak_speed_command)
   (if __peak_speed_command (setq _peak_speed_command __peak_speed_command)) _peak_speed_command)
  (:peak_accel_command
   (&optional __peak_accel_command)
   (if __peak_accel_command (setq _peak_accel_command __peak_accel_command)) _peak_accel_command)
  (:peak_jerk_command
   (&optional __peak_jerk_command)
   (if __peak_jerk_command (setq _peak_jerk_command __peak_jerk_command)) _peak_jerk_command)
  (:min_time_rate
   (&optional __min_time_rate)
   (if __min_time_rate (setq _min_time_rate __min_time_rate)) _min_time_rate)
  (:max_time_rate
   (&optional __max_time_rate)
   (if __max_time_rate (setq _max_time_rate __max_time_rate)) _max_time_rate)
  (:max_position_error
   (&optional __max_position_error)
   (if __max_position_error (setq _max_position_error __max_position_error)) _max_position_error)
  (:max_velocity_error
   (&optional __max_velocity_error)
   (if __max_velocity_error (setq _max_velocity_error __max_velocity_error)) _max_velocity_error)
  (:serialization-length
   ()
   (+
    ;; float64 _planned_duration
    8
    ;; float64 _measured_duration
    8
    ;; float64[] _min_angle_command
    (* 8    (length _min_angle_command)) 4
    ;; float64[] _max_angle_command
    (* 8    (length _max_angle_command)) 4
    ;; float64[] _peak_speed_command
    (* 8    (length _peak_speed_command)) 4
    ;; float64[] _peak_accel_command
    (* 8    (length _peak_accel_command)) 4
    ;; float64[] _peak_jerk_command
    (* 8    (length _peak_jerk_command)) 4
    ;; float64 _min_time_rate
    8
    ;; float64 _max_time_rate
    8
    ;; float64[] _max_position_error
    (* 8    (length _max_position_error)) 4
    ;; float64[] _max_velocity_error
    (* 8    (length _max_velocity_error)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _planned_duration
       (sys::poke _planned_duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _measured_duration
       (sys::poke _measured_duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _min_angle_command
     (write-long (length _min_angle_command) s)
     (dotimes (i (length _min_angle_command))
       (sys::poke (elt _min_angle_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _max_angle_command
     (write-long (length _max_angle_command) s)
     (dotimes (i (length _max_angle_command))
       (sys::poke (elt _max_angle_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _peak_speed_command
     (write-long (length _peak_speed_command) s)
     (dotimes (i (length _peak_speed_command))
       (sys::poke (elt _peak_speed_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _peak_accel_command
     (write-long (length _peak_accel_command) s)
     (dotimes (i (length _peak_accel_command))
       (sys::poke (elt _peak_accel_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _peak_jerk_command
     (write-long (length _peak_jerk_command) s)
     (dotimes (i (length _peak_jerk_command))
       (sys::poke (elt _peak_jerk_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _min_time_rate
       (sys::poke _min_time_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_time_rate
       (sys::poke _max_time_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _max_position_error
     (write-long (length _max_position_error) s)
     (dotimes (i (length _max_position_error))
       (sys::poke (elt _max_position_error i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _max_velocity_error
     (write-long (length _max_velocity_error) s)
     (dotimes (i (length _max_velocity_error))
       (sys::poke (elt _max_velocity_error i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _planned_duration
     (setq _planned_duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _measured_duration
     (setq _measured_duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _min_angle_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _min_angle_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _min_angle_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _max_angle_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_angle_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_angle_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _peak_speed_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _peak_speed_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _peak_speed_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _peak_accel_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _peak_accel_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _peak_accel_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _peak_jerk_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _peak_jerk_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _peak_jerk_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _min_time_rate
     (setq _min_time_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_time_rate
     (setq _max_time_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _max_position_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_position_error (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_position_error i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _max_velocity_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_velocity_error (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_velocity_error i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get intera_motion_msgs::TrajectoryAnalysis :md5sum-) "f30ec541413b4eb2cecc0d0af7d30ad4")
(setf (get intera_motion_msgs::TrajectoryAnalysis :datatype-) "intera_motion_msgs/TrajectoryAnalysis")
(setf (get intera_motion_msgs::TrajectoryAnalysis :definition-)
      "# The duration of the reference trajectory, as originally planned
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



(provide :intera_motion_msgs/TrajectoryAnalysis "f30ec541413b4eb2cecc0d0af7d30ad4")


