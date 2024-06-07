;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::WaypointOptions)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'WaypointOptions (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::WAYPOINTOPTIONS")
  (make-package "INTERA_MOTION_MSGS::WAYPOINTOPTIONS"))

(in-package "ROS")
;;//! \htmlinclude WaypointOptions.msg.html


(defclass intera_motion_msgs::WaypointOptions
  :super ros::object
  :slots (_label _max_joint_speed_ratio _joint_tolerances _max_joint_accel _max_linear_speed _max_linear_accel _max_rotational_speed _max_rotational_accel _corner_distance ))

(defmethod intera_motion_msgs::WaypointOptions
  (:init
   (&key
    ((:label __label) "")
    ((:max_joint_speed_ratio __max_joint_speed_ratio) 0.0)
    ((:joint_tolerances __joint_tolerances) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_joint_accel __max_joint_accel) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_linear_speed __max_linear_speed) 0.0)
    ((:max_linear_accel __max_linear_accel) 0.0)
    ((:max_rotational_speed __max_rotational_speed) 0.0)
    ((:max_rotational_accel __max_rotational_accel) 0.0)
    ((:corner_distance __corner_distance) 0.0)
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _max_joint_speed_ratio (float __max_joint_speed_ratio))
   (setq _joint_tolerances __joint_tolerances)
   (setq _max_joint_accel __max_joint_accel)
   (setq _max_linear_speed (float __max_linear_speed))
   (setq _max_linear_accel (float __max_linear_accel))
   (setq _max_rotational_speed (float __max_rotational_speed))
   (setq _max_rotational_accel (float __max_rotational_accel))
   (setq _corner_distance (float __corner_distance))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:max_joint_speed_ratio
   (&optional __max_joint_speed_ratio)
   (if __max_joint_speed_ratio (setq _max_joint_speed_ratio __max_joint_speed_ratio)) _max_joint_speed_ratio)
  (:joint_tolerances
   (&optional __joint_tolerances)
   (if __joint_tolerances (setq _joint_tolerances __joint_tolerances)) _joint_tolerances)
  (:max_joint_accel
   (&optional __max_joint_accel)
   (if __max_joint_accel (setq _max_joint_accel __max_joint_accel)) _max_joint_accel)
  (:max_linear_speed
   (&optional __max_linear_speed)
   (if __max_linear_speed (setq _max_linear_speed __max_linear_speed)) _max_linear_speed)
  (:max_linear_accel
   (&optional __max_linear_accel)
   (if __max_linear_accel (setq _max_linear_accel __max_linear_accel)) _max_linear_accel)
  (:max_rotational_speed
   (&optional __max_rotational_speed)
   (if __max_rotational_speed (setq _max_rotational_speed __max_rotational_speed)) _max_rotational_speed)
  (:max_rotational_accel
   (&optional __max_rotational_accel)
   (if __max_rotational_accel (setq _max_rotational_accel __max_rotational_accel)) _max_rotational_accel)
  (:corner_distance
   (&optional __corner_distance)
   (if __corner_distance (setq _corner_distance __corner_distance)) _corner_distance)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; float64 _max_joint_speed_ratio
    8
    ;; float64[] _joint_tolerances
    (* 8    (length _joint_tolerances)) 4
    ;; float64[] _max_joint_accel
    (* 8    (length _max_joint_accel)) 4
    ;; float64 _max_linear_speed
    8
    ;; float64 _max_linear_accel
    8
    ;; float64 _max_rotational_speed
    8
    ;; float64 _max_rotational_accel
    8
    ;; float64 _corner_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; float64 _max_joint_speed_ratio
       (sys::poke _max_joint_speed_ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _joint_tolerances
     (write-long (length _joint_tolerances) s)
     (dotimes (i (length _joint_tolerances))
       (sys::poke (elt _joint_tolerances i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _max_joint_accel
     (write-long (length _max_joint_accel) s)
     (dotimes (i (length _max_joint_accel))
       (sys::poke (elt _max_joint_accel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _max_linear_speed
       (sys::poke _max_linear_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_linear_accel
       (sys::poke _max_linear_accel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_rotational_speed
       (sys::poke _max_rotational_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_rotational_accel
       (sys::poke _max_rotational_accel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _corner_distance
       (sys::poke _corner_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _max_joint_speed_ratio
     (setq _max_joint_speed_ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _joint_tolerances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_tolerances (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_tolerances i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _max_joint_accel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_joint_accel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_joint_accel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _max_linear_speed
     (setq _max_linear_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_linear_accel
     (setq _max_linear_accel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_rotational_speed
     (setq _max_rotational_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_rotational_accel
     (setq _max_rotational_accel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _corner_distance
     (setq _corner_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get intera_motion_msgs::WaypointOptions :md5sum-) "1b4687d4e536269b06e629169723339f")
(setf (get intera_motion_msgs::WaypointOptions :datatype-) "intera_motion_msgs/WaypointOptions")
(setf (get intera_motion_msgs::WaypointOptions :definition-)
      "# Optional waypoint label
string label

# Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)
float64 max_joint_speed_ratio

# Slowdown heuristic is triggered if tracking error exceeds tolerances - radians
float64[] joint_tolerances

# Maximum accelerations for each joint (only for joint paths) - rad/s^2.
float64[] max_joint_accel


###########################################################
# The remaining parameters only apply to Cartesian paths

# Maximum linear speed of endpoint - m/s
float64 max_linear_speed

# Maximum linear acceleration of endpoint - m/s^2
float64 max_linear_accel

# Maximum rotational speed of endpoint - rad/s
float64 max_rotational_speed

# Maximum rotational acceleration of endpoint - rad/s^2
float64 max_rotational_accel

# Used for smoothing corners for continuous motion - m
# The distance from the waypoint to where the curve starts while blending from
# one straight line segment to the next.
# Larger distance:  trajectory passes farther from the waypoint at a higher speed
# Smaller distance:  trajectory passes closer to the waypoint at a lower speed
# Zero distance:  trajectory passes through the waypoint at zero speed
float64 corner_distance

")



(provide :intera_motion_msgs/WaypointOptions "1b4687d4e536269b06e629169723339f")


