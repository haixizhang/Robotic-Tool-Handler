;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::WaypointSimple)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'WaypointSimple (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::WAYPOINTSIMPLE")
  (make-package "INTERA_MOTION_MSGS::WAYPOINTSIMPLE"))

(in-package "ROS")
;;//! \htmlinclude WaypointSimple.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass intera_motion_msgs::WaypointSimple
  :super ros::object
  :slots (_joint_positions _active_endpoint _pose _segment_index _time ))

(defmethod intera_motion_msgs::WaypointSimple
  (:init
   (&key
    ((:joint_positions __joint_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:active_endpoint __active_endpoint) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:segment_index __segment_index) 0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _joint_positions __joint_positions)
   (setq _active_endpoint (string __active_endpoint))
   (setq _pose __pose)
   (setq _segment_index (round __segment_index))
   (setq _time (float __time))
   self)
  (:joint_positions
   (&optional __joint_positions)
   (if __joint_positions (setq _joint_positions __joint_positions)) _joint_positions)
  (:active_endpoint
   (&optional __active_endpoint)
   (if __active_endpoint (setq _active_endpoint __active_endpoint)) _active_endpoint)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:segment_index
   (&optional __segment_index)
   (if __segment_index (setq _segment_index __segment_index)) _segment_index)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_positions
    (* 8    (length _joint_positions)) 4
    ;; string _active_endpoint
    4 (length _active_endpoint)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; int32 _segment_index
    4
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_positions
     (write-long (length _joint_positions) s)
     (dotimes (i (length _joint_positions))
       (sys::poke (elt _joint_positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _active_endpoint
       (write-long (length _active_endpoint) s) (princ _active_endpoint s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; int32 _segment_index
       (write-long _segment_index s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _active_endpoint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_endpoint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; int32 _segment_index
     (setq _segment_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get intera_motion_msgs::WaypointSimple :md5sum-) "f29bcd94cca5f378ef52eb965645d7ce")
(setf (get intera_motion_msgs::WaypointSimple :datatype-) "intera_motion_msgs/WaypointSimple")
(setf (get intera_motion_msgs::WaypointSimple :definition-)
      "# Representation of a waypoint returned during path interpolation
# Does not include extra options

# Desired joint positions
float64[] joint_positions

# Name of the endpoint that is currently active
string active_endpoint

# Cartesian pose
geometry_msgs/Pose pose

int32 segment_index
float64 time


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :intera_motion_msgs/WaypointSimple "f29bcd94cca5f378ef52eb965645d7ce")


