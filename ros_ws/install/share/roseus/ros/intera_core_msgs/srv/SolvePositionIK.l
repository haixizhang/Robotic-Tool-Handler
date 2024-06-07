;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::SolvePositionIK)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'SolvePositionIK (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIK")
  (make-package "INTERA_CORE_MSGS::SOLVEPOSITIONIK"))
(unless (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST")
  (make-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(unless (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKRESPONSE")
  (make-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*SEED_AUTO*" (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(shadow '*SEED_AUTO* (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(defconstant intera_core_msgs::SolvePositionIKRequest::*SEED_AUTO* 0)
(intern "*SEED_USER*" (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(shadow '*SEED_USER* (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(defconstant intera_core_msgs::SolvePositionIKRequest::*SEED_USER* 1)
(intern "*SEED_CURRENT*" (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(shadow '*SEED_CURRENT* (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(defconstant intera_core_msgs::SolvePositionIKRequest::*SEED_CURRENT* 2)
(intern "*SEED_NS_MAP*" (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(shadow '*SEED_NS_MAP* (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKREQUEST"))
(defconstant intera_core_msgs::SolvePositionIKRequest::*SEED_NS_MAP* 3)

(defun intera_core_msgs::SolvePositionIKRequest-to-symbol (const)
  (cond
        ((= const 0) 'intera_core_msgs::SolvePositionIKRequest::*SEED_AUTO*)
        ((= const 1) 'intera_core_msgs::SolvePositionIKRequest::*SEED_USER*)
        ((= const 2) 'intera_core_msgs::SolvePositionIKRequest::*SEED_CURRENT*)
        ((= const 3) 'intera_core_msgs::SolvePositionIKRequest::*SEED_NS_MAP*)
        (t nil)))

(defclass intera_core_msgs::SolvePositionIKRequest
  :super ros::object
  :slots (_pose_stamp _seed_angles _seed_mode _use_nullspace_goal _nullspace_goal _nullspace_gain _tip_names ))

(defmethod intera_core_msgs::SolvePositionIKRequest
  (:init
   (&key
    ((:pose_stamp __pose_stamp) ())
    ((:seed_angles __seed_angles) ())
    ((:seed_mode __seed_mode) 0)
    ((:use_nullspace_goal __use_nullspace_goal) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:nullspace_goal __nullspace_goal) ())
    ((:nullspace_gain __nullspace_gain) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tip_names __tip_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _pose_stamp __pose_stamp)
   (setq _seed_angles __seed_angles)
   (setq _seed_mode (round __seed_mode))
   (setq _use_nullspace_goal __use_nullspace_goal)
   (setq _nullspace_goal __nullspace_goal)
   (setq _nullspace_gain __nullspace_gain)
   (setq _tip_names __tip_names)
   self)
  (:pose_stamp
   (&rest __pose_stamp)
   (if (keywordp (car __pose_stamp))
       (send* _pose_stamp __pose_stamp)
     (progn
       (if __pose_stamp (setq _pose_stamp (car __pose_stamp)))
       _pose_stamp)))
  (:seed_angles
   (&rest __seed_angles)
   (if (keywordp (car __seed_angles))
       (send* _seed_angles __seed_angles)
     (progn
       (if __seed_angles (setq _seed_angles (car __seed_angles)))
       _seed_angles)))
  (:seed_mode
   (&optional __seed_mode)
   (if __seed_mode (setq _seed_mode __seed_mode)) _seed_mode)
  (:use_nullspace_goal
   (&optional __use_nullspace_goal)
   (if __use_nullspace_goal (setq _use_nullspace_goal __use_nullspace_goal)) _use_nullspace_goal)
  (:nullspace_goal
   (&rest __nullspace_goal)
   (if (keywordp (car __nullspace_goal))
       (send* _nullspace_goal __nullspace_goal)
     (progn
       (if __nullspace_goal (setq _nullspace_goal (car __nullspace_goal)))
       _nullspace_goal)))
  (:nullspace_gain
   (&optional __nullspace_gain)
   (if __nullspace_gain (setq _nullspace_gain __nullspace_gain)) _nullspace_gain)
  (:tip_names
   (&optional __tip_names)
   (if __tip_names (setq _tip_names __tip_names)) _tip_names)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _pose_stamp
    (apply #'+ (send-all _pose_stamp :serialization-length)) 4
    ;; sensor_msgs/JointState[] _seed_angles
    (apply #'+ (send-all _seed_angles :serialization-length)) 4
    ;; int8 _seed_mode
    1
    ;; bool[] _use_nullspace_goal
    (* 1    (length _use_nullspace_goal)) 4
    ;; sensor_msgs/JointState[] _nullspace_goal
    (apply #'+ (send-all _nullspace_goal :serialization-length)) 4
    ;; float64[] _nullspace_gain
    (* 8    (length _nullspace_gain)) 4
    ;; string[] _tip_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tip_names)) 4
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
     ;; sensor_msgs/JointState[] _seed_angles
     (write-long (length _seed_angles) s)
     (dolist (elem _seed_angles)
       (send elem :serialize s)
       )
     ;; int8 _seed_mode
       (write-byte _seed_mode s)
     ;; bool[] _use_nullspace_goal
     (write-long (length _use_nullspace_goal) s)
     (dotimes (i (length _use_nullspace_goal))
       (if (elt _use_nullspace_goal i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; sensor_msgs/JointState[] _nullspace_goal
     (write-long (length _nullspace_goal) s)
     (dolist (elem _nullspace_goal)
       (send elem :serialize s)
       )
     ;; float64[] _nullspace_gain
     (write-long (length _nullspace_gain) s)
     (dotimes (i (length _nullspace_gain))
       (sys::poke (elt _nullspace_gain i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; geometry_msgs/PoseStamped[] _pose_stamp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_stamp (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _pose_stamp)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/JointState[] _seed_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _seed_angles (let (r) (dotimes (i n) (push (instance sensor_msgs::JointState :init) r)) r))
     (dolist (elem- _seed_angles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int8 _seed_mode
     (setq _seed_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _seed_mode 127) (setq _seed_mode (- _seed_mode 256)))
   ;; bool[] _use_nullspace_goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _use_nullspace_goal (make-list n))
     (dotimes (i n)
     (setf (elt _use_nullspace_goal i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; sensor_msgs/JointState[] _nullspace_goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nullspace_goal (let (r) (dotimes (i n) (push (instance sensor_msgs::JointState :init) r)) r))
     (dolist (elem- _nullspace_goal)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _nullspace_gain
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nullspace_gain (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _nullspace_gain i) (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(intern "*IK_FAILED*" (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))
(shadow '*IK_FAILED* (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))
(defconstant intera_core_msgs::SolvePositionIKResponse::*IK_FAILED* -1)
(intern "*IK_IN_COLLISION*" (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))
(shadow '*IK_IN_COLLISION* (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))
(defconstant intera_core_msgs::SolvePositionIKResponse::*IK_IN_COLLISION* -2)
(intern "*IK_ENDPOINT_DOES_NOT_EXIST*" (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))
(shadow '*IK_ENDPOINT_DOES_NOT_EXIST* (find-package "INTERA_CORE_MSGS::SOLVEPOSITIONIKRESPONSE"))
(defconstant intera_core_msgs::SolvePositionIKResponse::*IK_ENDPOINT_DOES_NOT_EXIST* -3)

(defun intera_core_msgs::SolvePositionIKResponse-to-symbol (const)
  (cond
        ((= const -1) 'intera_core_msgs::SolvePositionIKResponse::*IK_FAILED*)
        ((= const -2) 'intera_core_msgs::SolvePositionIKResponse::*IK_IN_COLLISION*)
        ((= const -3) 'intera_core_msgs::SolvePositionIKResponse::*IK_ENDPOINT_DOES_NOT_EXIST*)
        (t nil)))

(defclass intera_core_msgs::SolvePositionIKResponse
  :super ros::object
  :slots (_joints _result_type ))

(defmethod intera_core_msgs::SolvePositionIKResponse
  (:init
   (&key
    ((:joints __joints) ())
    ((:result_type __result_type) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _joints __joints)
   (setq _result_type __result_type)
   self)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:result_type
   (&optional __result_type)
   (if __result_type (setq _result_type __result_type)) _result_type)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ;; int8[] _result_type
    (* 1    (length _result_type)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;; int8[] _result_type
     (write-long (length _result_type) s)
     (dotimes (i (length _result_type))
       (write-byte (elt _result_type i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance sensor_msgs::JointState :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int8[] _result_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_type (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _result_type i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _result_type i) 127) (setf (elt _result_type i) (- (elt _result_type i) 256)))
     ))
   ;;
   self)
  )

(defclass intera_core_msgs::SolvePositionIK
  :super ros::object
  :slots ())

(setf (get intera_core_msgs::SolvePositionIK :md5sum-) "7ae4607244c30c6c631f3693cd280e45")
(setf (get intera_core_msgs::SolvePositionIK :datatype-) "intera_core_msgs/SolvePositionIK")
(setf (get intera_core_msgs::SolvePositionIK :request) intera_core_msgs::SolvePositionIKRequest)
(setf (get intera_core_msgs::SolvePositionIK :response) intera_core_msgs::SolvePositionIKResponse)

(defmethod intera_core_msgs::SolvePositionIKRequest
  (:response () (instance intera_core_msgs::SolvePositionIKResponse :init)))

(setf (get intera_core_msgs::SolvePositionIKRequest :md5sum-) "7ae4607244c30c6c631f3693cd280e45")
(setf (get intera_core_msgs::SolvePositionIKRequest :datatype-) "intera_core_msgs/SolvePositionIKRequest")
(setf (get intera_core_msgs::SolvePositionIKRequest :definition-)
      "# Endpoint Pose(s) to request Inverse-Kinematics joint solutions for.
geometry_msgs/PoseStamped[] pose_stamp

# (optional) Joint Angle Seed(s) for IK solver.
# * specify a JointState seed for each pose_stamp, using name[] and position[]
# * empty arrays or a non-default seed_mode will cause user seed to not be used
sensor_msgs/JointState[] seed_angles

# Seed Type Mode
# * default (SEED_AUTO) mode: iterate through seed types until first valid
#                             solution is found
# * setting any other mode:   try only that seed type
int8 SEED_AUTO    = 0
int8 SEED_USER    = 1
int8 SEED_CURRENT = 2
int8 SEED_NS_MAP  = 3

int8 seed_mode

# For each IK request, tells whether it should use the nullspace goal
bool[] use_nullspace_goal

# The nullspace goal can either be the full set or subset of joint angles
sensor_msgs/JointState[] nullspace_goal

# The gain used to bias toward the nullspace goal. Must be [0.0, 1.0]
# If empty, the default gain of 0.4 will be used
float64[] nullspace_gain

# Tip name for each pose IK
string[] tip_names


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
---

# joints[i]      == joint angle solution for each pose_state[i]
sensor_msgs/JointState[] joints

# result_type[i] == seed type used to find valid solution, joints[i];
# otherwise,     == IK_FAILED (no valid IK solution found)
# or             == IK_IN_COLLISION (if IK solution is in self collision)
# or             == IK_ENDPOINT_DOES_NOT_EXIST
int8 IK_FAILED = -1
int8 IK_IN_COLLISION = -2
int8 IK_ENDPOINT_DOES_NOT_EXIST = -3
int8[] result_type


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
")

(setf (get intera_core_msgs::SolvePositionIKResponse :md5sum-) "7ae4607244c30c6c631f3693cd280e45")
(setf (get intera_core_msgs::SolvePositionIKResponse :datatype-) "intera_core_msgs/SolvePositionIKResponse")
(setf (get intera_core_msgs::SolvePositionIKResponse :definition-)
      "# Endpoint Pose(s) to request Inverse-Kinematics joint solutions for.
geometry_msgs/PoseStamped[] pose_stamp

# (optional) Joint Angle Seed(s) for IK solver.
# * specify a JointState seed for each pose_stamp, using name[] and position[]
# * empty arrays or a non-default seed_mode will cause user seed to not be used
sensor_msgs/JointState[] seed_angles

# Seed Type Mode
# * default (SEED_AUTO) mode: iterate through seed types until first valid
#                             solution is found
# * setting any other mode:   try only that seed type
int8 SEED_AUTO    = 0
int8 SEED_USER    = 1
int8 SEED_CURRENT = 2
int8 SEED_NS_MAP  = 3

int8 seed_mode

# For each IK request, tells whether it should use the nullspace goal
bool[] use_nullspace_goal

# The nullspace goal can either be the full set or subset of joint angles
sensor_msgs/JointState[] nullspace_goal

# The gain used to bias toward the nullspace goal. Must be [0.0, 1.0]
# If empty, the default gain of 0.4 will be used
float64[] nullspace_gain

# Tip name for each pose IK
string[] tip_names


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
---

# joints[i]      == joint angle solution for each pose_state[i]
sensor_msgs/JointState[] joints

# result_type[i] == seed type used to find valid solution, joints[i];
# otherwise,     == IK_FAILED (no valid IK solution found)
# or             == IK_IN_COLLISION (if IK solution is in self collision)
# or             == IK_ENDPOINT_DOES_NOT_EXIST
int8 IK_FAILED = -1
int8 IK_IN_COLLISION = -2
int8 IK_ENDPOINT_DOES_NOT_EXIST = -3
int8[] result_type


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
")



(provide :intera_core_msgs/SolvePositionIK "7ae4607244c30c6c631f3693cd280e45")


