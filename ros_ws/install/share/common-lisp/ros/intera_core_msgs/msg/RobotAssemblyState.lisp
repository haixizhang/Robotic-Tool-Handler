; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude RobotAssemblyState.msg.html

(cl:defclass <RobotAssemblyState> (roslisp-msg-protocol:ros-message)
  ((homed
    :reader homed
    :initarg :homed
    :type cl:boolean
    :initform cl:nil)
   (ready
    :reader ready
    :initarg :ready
    :type cl:boolean
    :initform cl:nil)
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (stopped
    :reader stopped
    :initarg :stopped
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:boolean
    :initform cl:nil)
   (lowVoltage
    :reader lowVoltage
    :initarg :lowVoltage
    :type cl:boolean
    :initform cl:nil)
   (estop_button
    :reader estop_button
    :initarg :estop_button
    :type cl:fixnum
    :initform 0)
   (estop_source
    :reader estop_source
    :initarg :estop_source
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotAssemblyState (<RobotAssemblyState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotAssemblyState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotAssemblyState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<RobotAssemblyState> is deprecated: use intera_core_msgs-msg:RobotAssemblyState instead.")))

(cl:ensure-generic-function 'homed-val :lambda-list '(m))
(cl:defmethod homed-val ((m <RobotAssemblyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:homed-val is deprecated.  Use intera_core_msgs-msg:homed instead.")
  (homed m))

(cl:ensure-generic-function 'ready-val :lambda-list '(m))
(cl:defmethod ready-val ((m <RobotAssemblyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:ready-val is deprecated.  Use intera_core_msgs-msg:ready instead.")
  (ready m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <RobotAssemblyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:enabled-val is deprecated.  Use intera_core_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'stopped-val :lambda-list '(m))
(cl:defmethod stopped-val ((m <RobotAssemblyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:stopped-val is deprecated.  Use intera_core_msgs-msg:stopped instead.")
  (stopped m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <RobotAssemblyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:error-val is deprecated.  Use intera_core_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'lowVoltage-val :lambda-list '(m))
(cl:defmethod lowVoltage-val ((m <RobotAssemblyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:lowVoltage-val is deprecated.  Use intera_core_msgs-msg:lowVoltage instead.")
  (lowVoltage m))

(cl:ensure-generic-function 'estop_button-val :lambda-list '(m))
(cl:defmethod estop_button-val ((m <RobotAssemblyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:estop_button-val is deprecated.  Use intera_core_msgs-msg:estop_button instead.")
  (estop_button m))

(cl:ensure-generic-function 'estop_source-val :lambda-list '(m))
(cl:defmethod estop_source-val ((m <RobotAssemblyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:estop_source-val is deprecated.  Use intera_core_msgs-msg:estop_source instead.")
  (estop_source m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotAssemblyState>)))
    "Constants for message type '<RobotAssemblyState>"
  '((:ESTOP_BUTTON_UNPRESSED . 0)
    (:ESTOP_BUTTON_PRESSED . 1)
    (:ESTOP_BUTTON_UNKNOWN . 2)
    (:ESTOP_BUTTON_RELEASED . 3)
    (:ESTOP_SOURCE_NONE . 0)
    (:ESTOP_SOURCE_USER . 1)
    (:ESTOP_SOURCE_UNKNOWN . 2)
    (:ESTOP_SOURCE_FAULT . 3)
    (:ESTOP_SOURCE_ENGINE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotAssemblyState)))
    "Constants for message type 'RobotAssemblyState"
  '((:ESTOP_BUTTON_UNPRESSED . 0)
    (:ESTOP_BUTTON_PRESSED . 1)
    (:ESTOP_BUTTON_UNKNOWN . 2)
    (:ESTOP_BUTTON_RELEASED . 3)
    (:ESTOP_SOURCE_NONE . 0)
    (:ESTOP_SOURCE_USER . 1)
    (:ESTOP_SOURCE_UNKNOWN . 2)
    (:ESTOP_SOURCE_FAULT . 3)
    (:ESTOP_SOURCE_ENGINE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotAssemblyState>) ostream)
  "Serializes a message object of type '<RobotAssemblyState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'homed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ready) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stopped) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lowVoltage) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estop_button)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estop_source)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotAssemblyState>) istream)
  "Deserializes a message object of type '<RobotAssemblyState>"
    (cl:setf (cl:slot-value msg 'homed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stopped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lowVoltage) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estop_button)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estop_source)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotAssemblyState>)))
  "Returns string type for a message object of type '<RobotAssemblyState>"
  "intera_core_msgs/RobotAssemblyState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotAssemblyState)))
  "Returns string type for a message object of type 'RobotAssemblyState"
  "intera_core_msgs/RobotAssemblyState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotAssemblyState>)))
  "Returns md5sum for a message object of type '<RobotAssemblyState>"
  "df79ce5f75a6b23626e9fcdf1cc4d298")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotAssemblyState)))
  "Returns md5sum for a message object of type 'RobotAssemblyState"
  "df79ce5f75a6b23626e9fcdf1cc4d298")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotAssemblyState>)))
  "Returns full string definition for message of type '<RobotAssemblyState>"
  (cl:format cl:nil "bool homed               # true if all joints are homed~%bool ready               # true if enabled and ready to operate, e.g., not homing~%bool enabled             # true if enabled~%bool stopped             # true if stopped -- e-stop asserted~%bool error               # true if a component of the assembly has an error~%bool lowVoltage          # true when the robot is in low voltage mode~%~%# The following are specific to the robot top-level assembly:~%uint8  estop_button      # One of the following:~%  uint8   ESTOP_BUTTON_UNPRESSED = 0   # Robot is not stopped and button is not pressed~%  uint8   ESTOP_BUTTON_PRESSED   = 1~%  uint8   ESTOP_BUTTON_UNKNOWN   = 2   # STATE_UNKNOWN when estop was asserted by a non-user source~%  uint8   ESTOP_BUTTON_RELEASED  = 3   # Was pressed, is now known to be released, but robot is still stopped.~%#~%uint8  estop_source      # If stopped is true, the source of the e-stop.  One of the following:~%  uint8  ESTOP_SOURCE_NONE      = 0   # e-stop is not asserted~%  uint8  ESTOP_SOURCE_USER      = 1   # e-stop source is user input (the red button)~%  uint8  ESTOP_SOURCE_UNKNOWN   = 2   # e-stop source is unknown~%  uint8  ESTOP_SOURCE_FAULT     = 3   # MotorController asserted e-stop in response to a joint fault~%  uint8  ESTOP_SOURCE_ENGINE    = 4   # MotorController asserted e-stop in response to engine request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotAssemblyState)))
  "Returns full string definition for message of type 'RobotAssemblyState"
  (cl:format cl:nil "bool homed               # true if all joints are homed~%bool ready               # true if enabled and ready to operate, e.g., not homing~%bool enabled             # true if enabled~%bool stopped             # true if stopped -- e-stop asserted~%bool error               # true if a component of the assembly has an error~%bool lowVoltage          # true when the robot is in low voltage mode~%~%# The following are specific to the robot top-level assembly:~%uint8  estop_button      # One of the following:~%  uint8   ESTOP_BUTTON_UNPRESSED = 0   # Robot is not stopped and button is not pressed~%  uint8   ESTOP_BUTTON_PRESSED   = 1~%  uint8   ESTOP_BUTTON_UNKNOWN   = 2   # STATE_UNKNOWN when estop was asserted by a non-user source~%  uint8   ESTOP_BUTTON_RELEASED  = 3   # Was pressed, is now known to be released, but robot is still stopped.~%#~%uint8  estop_source      # If stopped is true, the source of the e-stop.  One of the following:~%  uint8  ESTOP_SOURCE_NONE      = 0   # e-stop is not asserted~%  uint8  ESTOP_SOURCE_USER      = 1   # e-stop source is user input (the red button)~%  uint8  ESTOP_SOURCE_UNKNOWN   = 2   # e-stop source is unknown~%  uint8  ESTOP_SOURCE_FAULT     = 3   # MotorController asserted e-stop in response to a joint fault~%  uint8  ESTOP_SOURCE_ENGINE    = 4   # MotorController asserted e-stop in response to engine request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotAssemblyState>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotAssemblyState>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotAssemblyState
    (cl:cons ':homed (homed msg))
    (cl:cons ':ready (ready msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':stopped (stopped msg))
    (cl:cons ':error (error msg))
    (cl:cons ':lowVoltage (lowVoltage msg))
    (cl:cons ':estop_button (estop_button msg))
    (cl:cons ':estop_source (estop_source msg))
))
