;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::SolvePositionFK)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'SolvePositionFK (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONFK")
  (make-package "INTERA_CORE_MSGS::SOLVEPOSITIONFK"))
(unless (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONFKREQUEST")
  (make-package "INTERA_CORE_MSGS::SOLVEPOSITIONFKREQUEST"))
(unless (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONFKRESPONSE")
  (make-package "INTERA_CORE_MSGS::SOLVEPOSITIONFKRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass intera_core_msgs::SolvePositionFKRequest
  :super ros::object
  :slots (_configuration _tip_names ))

(defmethod intera_core_msgs::SolvePositionFKRequest
  (:init
   (&key
    ((:configuration __configuration) ())
    ((:tip_names __tip_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _configuration __configuration)
   (setq _tip_names __tip_names)
   self)
  (:configuration
   (&rest __configuration)
   (if (keywordp (car __configuration))
       (send* _configuration __configuration)
     (progn
       (if __configuration (setq _configuration (car __configuration)))
       _configuration)))
  (:tip_names
   (&optional __tip_names)
   (if __tip_names (setq _tip_names __tip_names)) _tip_names)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState[] _configuration
    (apply #'+ (send-all _configuration :serialization-length)) 4
    ;; string[] _tip_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tip_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState[] _configuration
     (write-long (length _configuration) s)
     (dolist (elem _configuration)
       (send elem :serialize s)
       )
     ;; string[] _tip_names
     (write-long (length _tip_names) s)
     (dolist (elem _tip_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState[] _configuration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _configuration (let (r) (dotimes (i n) (push (instance sensor_msgs::JointState :init) r)) r))
     (dolist (elem- _configuration)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _tip_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tip_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tip_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass intera_core_msgs::SolvePositionFKResponse
  :super ros::object
  :slots (_pose_stamp _isValid _inCollision ))

(defmethod intera_core_msgs::SolvePositionFKResponse
  (:init
   (&key
    ((:pose_stamp __pose_stamp) ())
    ((:isValid __isValid) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:inCollision __inCollision) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _pose_stamp __pose_stamp)
   (setq _isValid __isValid)
   (setq _inCollision __inCollision)
   self)
  (:pose_stamp
   (&rest __pose_stamp)
   (if (keywordp (car __pose_stamp))
       (send* _pose_stamp __pose_stamp)
     (progn
       (if __pose_stamp (setq _pose_stamp (car __pose_stamp)))
       _pose_stamp)))
  (:isValid
   (&optional __isValid)
   (if __isValid (setq _isValid __isValid)) _isValid)
  (:inCollision
   (&optional __inCollision)
   (if __inCollision (setq _inCollision __inCollision)) _inCollision)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _pose_stamp
    (apply #'+ (send-all _pose_stamp :serialization-length)) 4
    ;; bool[] _isValid
    (* 1    (length _isValid)) 4
    ;; bool[] _inCollision
    (* 1    (length _inCollision)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _pose_stamp
     (write-long (length _pose_stamp) s)
     (dolist (elem _pose_stamp)
       (send elem :serialize s)
       )
     ;; bool[] _isValid
     (write-long (length _isValid) s)
     (dotimes (i (length _isValid))
       (if (elt _isValid i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _inCollision
     (write-long (length _inCollision) s)
     (dotimes (i (length _inCollision))
       (if (elt _inCollision i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _pose_stamp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_stamp (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _pose_stamp)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool[] _isValid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _isValid (make-list n))
     (dotimes (i n)
     (setf (elt _isValid i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _inCollision
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inCollision (make-list n))
     (dotimes (i n)
     (setf (elt _inCollision i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass intera_core_msgs::SolvePositionFK
  :super ros::object
  :slots ())

(setf (get intera_core_msgs::SolvePositionFK :md5sum-) "6db8c7b904dcebec9a59022cd894ef68")
(setf (get intera_core_msgs::SolvePositionFK :datatype-) "intera_core_msgs/SolvePositionFK")
(setf (get intera_core_msgs::SolvePositionFK :request) intera_core_msgs::SolvePositionFKRequest)
(setf (get intera_core_msgs::SolvePositionFK :response) intera_core_msgs::SolvePositionFKResponse)

(defmethod intera_core_msgs::SolvePositionFKRequest
  (:response () (instance intera_core_msgs::SolvePositionFKResponse :init)))

(setf (get intera_core_msgs::SolvePositionFKRequest :md5sum-) "6db8c7b904dcebec9a59022cd894ef68")
(setf (get intera_core_msgs::SolvePositionFKRequest :datatype-) "intera_core_msgs/SolvePositionFKRequest")
(setf (get intera_core_msgs::SolvePositionFKRequest :definition-)
      "# Joint positions(s) to request Forward-Kinematics joint solutions for
sensor_msgs/JointState[] configuration

# Tip name for each pose FK
string[] tip_names


================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---

# Solution(s) per FK call
geometry_msgs/PoseStamped[] pose_stamp
bool[] isValid
bool[] inCollision


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
")

(setf (get intera_core_msgs::SolvePositionFKResponse :md5sum-) "6db8c7b904dcebec9a59022cd894ef68")
(setf (get intera_core_msgs::SolvePositionFKResponse :datatype-) "intera_core_msgs/SolvePositionFKResponse")
(setf (get intera_core_msgs::SolvePositionFKResponse :definition-)
      "# Joint positions(s) to request Forward-Kinematics joint solutions for
sensor_msgs/JointState[] configuration

# Tip name for each pose FK
string[] tip_names


================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---

# Solution(s) per FK call
geometry_msgs/PoseStamped[] pose_stamp
bool[] isValid
bool[] inCollision


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
")



(provide :intera_core_msgs/SolvePositionFK "6db8c7b904dcebec9a59022cd894ef68")


