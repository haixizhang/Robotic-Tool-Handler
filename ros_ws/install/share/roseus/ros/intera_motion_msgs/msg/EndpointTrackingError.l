;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::EndpointTrackingError)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'EndpointTrackingError (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::ENDPOINTTRACKINGERROR")
  (make-package "INTERA_MOTION_MSGS::ENDPOINTTRACKINGERROR"))

(in-package "ROS")
;;//! \htmlinclude EndpointTrackingError.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass intera_motion_msgs::EndpointTrackingError
  :super ros::object
  :slots (_header _trajectory_id _trajectory_time _active_endpoint _pose_error _twist_error _pose_command _twist_command ))

(defmethod intera_motion_msgs::EndpointTrackingError
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory_id __trajectory_id) 0)
    ((:trajectory_time __trajectory_time) 0.0)
    ((:active_endpoint __active_endpoint) "")
    ((:pose_error __pose_error) (instance geometry_msgs::Pose :init))
    ((:twist_error __twist_error) (instance geometry_msgs::Twist :init))
    ((:pose_command __pose_command) (instance geometry_msgs::Pose :init))
    ((:twist_command __twist_command) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory_id (round __trajectory_id))
   (setq _trajectory_time (float __trajectory_time))
   (setq _active_endpoint (string __active_endpoint))
   (setq _pose_error __pose_error)
   (setq _twist_error __twist_error)
   (setq _pose_command __pose_command)
   (setq _twist_command __twist_command)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:trajectory_time
   (&optional __trajectory_time)
   (if __trajectory_time (setq _trajectory_time __trajectory_time)) _trajectory_time)
  (:active_endpoint
   (&optional __active_endpoint)
   (if __active_endpoint (setq _active_endpoint __active_endpoint)) _active_endpoint)
  (:pose_error
   (&rest __pose_error)
   (if (keywordp (car __pose_error))
       (send* _pose_error __pose_error)
     (progn
       (if __pose_error (setq _pose_error (car __pose_error)))
       _pose_error)))
  (:twist_error
   (&rest __twist_error)
   (if (keywordp (car __twist_error))
       (send* _twist_error __twist_error)
     (progn
       (if __twist_error (setq _twist_error (car __twist_error)))
       _twist_error)))
  (:pose_command
   (&rest __pose_command)
   (if (keywordp (car __pose_command))
       (send* _pose_command __pose_command)
     (progn
       (if __pose_command (setq _pose_command (car __pose_command)))
       _pose_command)))
  (:twist_command
   (&rest __twist_command)
   (if (keywordp (car __twist_command))
       (send* _twist_command __twist_command)
     (progn
       (if __twist_command (setq _twist_command (car __twist_command)))
       _twist_command)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _trajectory_id
    4
    ;; float64 _trajectory_time
    8
    ;; string _active_endpoint
    4 (length _active_endpoint)
    ;; geometry_msgs/Pose _pose_error
    (send _pose_error :serialization-length)
    ;; geometry_msgs/Twist _twist_error
    (send _twist_error :serialization-length)
    ;; geometry_msgs/Pose _pose_command
    (send _pose_command :serialization-length)
    ;; geometry_msgs/Twist _twist_command
    (send _twist_command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _trajectory_id
       (write-long _trajectory_id s)
     ;; float64 _trajectory_time
       (sys::poke _trajectory_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _active_endpoint
       (write-long (length _active_endpoint) s) (princ _active_endpoint s)
     ;; geometry_msgs/Pose _pose_error
       (send _pose_error :serialize s)
     ;; geometry_msgs/Twist _twist_error
       (send _twist_error :serialize s)
     ;; geometry_msgs/Pose _pose_command
       (send _pose_command :serialize s)
     ;; geometry_msgs/Twist _twist_command
       (send _twist_command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _trajectory_time
     (setq _trajectory_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _active_endpoint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_endpoint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose_error
     (send _pose_error :deserialize buf ptr-) (incf ptr- (send _pose_error :serialization-length))
   ;; geometry_msgs/Twist _twist_error
     (send _twist_error :deserialize buf ptr-) (incf ptr- (send _twist_error :serialization-length))
   ;; geometry_msgs/Pose _pose_command
     (send _pose_command :deserialize buf ptr-) (incf ptr- (send _pose_command :serialization-length))
   ;; geometry_msgs/Twist _twist_command
     (send _twist_command :deserialize buf ptr-) (incf ptr- (send _twist_command :serialization-length))
   ;;
   self)
  )

(setf (get intera_motion_msgs::EndpointTrackingError :md5sum-) "c266cbf60fc5f871b5909394c05032fc")
(setf (get intera_motion_msgs::EndpointTrackingError :datatype-) "intera_motion_msgs/EndpointTrackingError")
(setf (get intera_motion_msgs::EndpointTrackingError :definition-)
      "# This message will be published from the TrackingController
# It contains the endpoint tracking error data for diagnostics.
Header header

# ID for the trajectory.
uint32 trajectory_id

# Reference time since start of trajectory in seconds.
float64 trajectory_time

# Name of the endpoint that is currently active (coordinate frame name)
string active_endpoint

# pose_error transforms from pose_command to pose_measured
# units: translation (meters) ; orientation (quaternion)
geometry_msgs/Pose pose_error

# twist_error = twist_measured) - twist_command
# units: linear (meters) ; angular (radians per second)
geometry_msgs/Twist twist_error

# pose that is commanded at the active_endpoint
# units: translation (meters) ; orientation (quaternion)
geometry_msgs/Pose pose_command

# twist that is commanded at the active_endpoint
# units: linear (meters) ; angular (radians per second)
geometry_msgs/Twist twist_command

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :intera_motion_msgs/EndpointTrackingError "c266cbf60fc5f871b5909394c05032fc")


