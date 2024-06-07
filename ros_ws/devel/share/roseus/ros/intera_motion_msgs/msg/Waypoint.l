;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::Waypoint)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'Waypoint (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::WAYPOINT")
  (make-package "INTERA_MOTION_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass intera_motion_msgs::Waypoint
  :super ros::object
  :slots (_joint_positions _active_endpoint _pose _options ))

(defmethod intera_motion_msgs::Waypoint
  (:init
   (&key
    ((:joint_positions __joint_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:active_endpoint __active_endpoint) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:options __options) (instance intera_motion_msgs::WaypointOptions :init))
    )
   (send-super :init)
   (setq _joint_positions __joint_positions)
   (setq _active_endpoint (string __active_endpoint))
   (setq _pose __pose)
   (setq _options __options)
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
  (:options
   (&rest __options)
   (if (keywordp (car __options))
       (send* _options __options)
     (progn
       (if __options (setq _options (car __options)))
       _options)))
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_positions
    (* 8    (length _joint_positions)) 4
    ;; string _active_endpoint
    4 (length _active_endpoint)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; intera_motion_msgs/WaypointOptions _options
    (send _options :serialization-length)
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
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; intera_motion_msgs/WaypointOptions _options
       (send _options :serialize s)
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
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; intera_motion_msgs/WaypointOptions _options
     (send _options :deserialize buf ptr-) (incf ptr- (send _options :serialization-length))
   ;;
   self)
  )

(setf (get intera_motion_msgs::Waypoint :md5sum-) "8284b290b22204acc5e4d8000467b033")
(setf (get intera_motion_msgs::Waypoint :datatype-) "intera_motion_msgs/Waypoint")
(setf (get intera_motion_msgs::Waypoint :definition-)
      "# Representation of a waypoint used by the motion controller

# Desired joint positions
# For Cartesian segments, the joint positions are used as nullspace biases
float64[] joint_positions

# Name of the endpoint that is currently active
string active_endpoint

# Cartesian pose
# This is not used in trajectories using joint interpolation
geometry_msgs/PoseStamped pose

# Waypoint specific options
# Default values will be used if not set
# All waypoint options are applied to the segment moving to that waypoint
WaypointOptions options

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: intera_motion_msgs/WaypointOptions
# Optional waypoint label
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



(provide :intera_motion_msgs/Waypoint "8284b290b22204acc5e4d8000467b033")


