;; Auto-generated. Do not edit!


(when (boundp 'intera_motion_msgs::JointTrackingError)
  (if (not (find-package "INTERA_MOTION_MSGS"))
    (make-package "INTERA_MOTION_MSGS"))
  (shadow 'JointTrackingError (find-package "INTERA_MOTION_MSGS")))
(unless (find-package "INTERA_MOTION_MSGS::JOINTTRACKINGERROR")
  (make-package "INTERA_MOTION_MSGS::JOINTTRACKINGERROR"))

(in-package "ROS")
;;//! \htmlinclude JointTrackingError.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass intera_motion_msgs::JointTrackingError
  :super ros::object
  :slots (_header _trajectory_id _trajectory_time _joint_names _position_error _velocity_error _position_command _velocity_command ))

(defmethod intera_motion_msgs::JointTrackingError
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory_id __trajectory_id) 0)
    ((:trajectory_time __trajectory_time) 0.0)
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:position_error __position_error) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_error __velocity_error) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_command __position_command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_command __velocity_command) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory_id (round __trajectory_id))
   (setq _trajectory_time (float __trajectory_time))
   (setq _joint_names __joint_names)
   (setq _position_error __position_error)
   (setq _velocity_error __velocity_error)
   (setq _position_command __position_command)
   (setq _velocity_command __velocity_command)
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
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:position_error
   (&optional __position_error)
   (if __position_error (setq _position_error __position_error)) _position_error)
  (:velocity_error
   (&optional __velocity_error)
   (if __velocity_error (setq _velocity_error __velocity_error)) _velocity_error)
  (:position_command
   (&optional __position_command)
   (if __position_command (setq _position_command __position_command)) _position_command)
  (:velocity_command
   (&optional __velocity_command)
   (if __velocity_command (setq _velocity_command __velocity_command)) _velocity_command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _trajectory_id
    4
    ;; float64 _trajectory_time
    8
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _position_error
    (* 8    (length _position_error)) 4
    ;; float64[] _velocity_error
    (* 8    (length _velocity_error)) 4
    ;; float64[] _position_command
    (* 8    (length _position_command)) 4
    ;; float64[] _velocity_command
    (* 8    (length _velocity_command)) 4
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
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _position_error
     (write-long (length _position_error) s)
     (dotimes (i (length _position_error))
       (sys::poke (elt _position_error i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity_error
     (write-long (length _velocity_error) s)
     (dotimes (i (length _velocity_error))
       (sys::poke (elt _velocity_error i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _position_command
     (write-long (length _position_command) s)
     (dotimes (i (length _position_command))
       (sys::poke (elt _position_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity_command
     (write-long (length _velocity_command) s)
     (dotimes (i (length _velocity_command))
       (sys::poke (elt _velocity_command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
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
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _position_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_error (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_error i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_error (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_error i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _position_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity_command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get intera_motion_msgs::JointTrackingError :md5sum-) "a564fcc23df67e287d3c4c2aa3aef83b")
(setf (get intera_motion_msgs::JointTrackingError :datatype-) "intera_motion_msgs/JointTrackingError")
(setf (get intera_motion_msgs::JointTrackingError :definition-)
      "# This message will be published from TrackingErrorPlugin.
# It contains the joint-space tracking error data for diagnostics.
Header header

# ID for the trajectory.
uint32 trajectory_id

# Reference time since start of trajectory in seconds.
float64 trajectory_time

# name associated with each element for the vectors in this message
string[] joint_names

# position_error = position_measured - position_command
# units:  radians
float64[] position_error

# velocity_error = velocity_measured - velocity_command
# units:  radians per second
float64[] velocity_error

# joint position that is commanded for each joint, in radians
float64[] position_command

# joint velocity that is commanded for each joint, in radians per second
float64[] velocity_command

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



(provide :intera_motion_msgs/JointTrackingError "a564fcc23df67e287d3c4c2aa3aef83b")


