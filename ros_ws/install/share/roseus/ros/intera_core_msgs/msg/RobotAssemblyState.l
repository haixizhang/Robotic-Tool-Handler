;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::RobotAssemblyState)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'RobotAssemblyState (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE")
  (make-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotAssemblyState.msg.html


(intern "*ESTOP_BUTTON_UNPRESSED*" (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(shadow '*ESTOP_BUTTON_UNPRESSED* (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(defconstant intera_core_msgs::RobotAssemblyState::*ESTOP_BUTTON_UNPRESSED* 0)
(intern "*ESTOP_BUTTON_PRESSED*" (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(shadow '*ESTOP_BUTTON_PRESSED* (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(defconstant intera_core_msgs::RobotAssemblyState::*ESTOP_BUTTON_PRESSED* 1)
(intern "*ESTOP_BUTTON_UNKNOWN*" (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(shadow '*ESTOP_BUTTON_UNKNOWN* (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(defconstant intera_core_msgs::RobotAssemblyState::*ESTOP_BUTTON_UNKNOWN* 2)
(intern "*ESTOP_BUTTON_RELEASED*" (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(shadow '*ESTOP_BUTTON_RELEASED* (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(defconstant intera_core_msgs::RobotAssemblyState::*ESTOP_BUTTON_RELEASED* 3)
(intern "*ESTOP_SOURCE_NONE*" (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_NONE* (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(defconstant intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_NONE* 0)
(intern "*ESTOP_SOURCE_USER*" (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_USER* (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(defconstant intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_USER* 1)
(intern "*ESTOP_SOURCE_UNKNOWN*" (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_UNKNOWN* (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(defconstant intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_UNKNOWN* 2)
(intern "*ESTOP_SOURCE_FAULT*" (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_FAULT* (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(defconstant intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_FAULT* 3)
(intern "*ESTOP_SOURCE_ENGINE*" (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(shadow '*ESTOP_SOURCE_ENGINE* (find-package "INTERA_CORE_MSGS::ROBOTASSEMBLYSTATE"))
(defconstant intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_ENGINE* 4)

(defun intera_core_msgs::RobotAssemblyState-to-symbol (const)
  (cond
        ((= const 0) 'intera_core_msgs::RobotAssemblyState::*ESTOP_BUTTON_UNPRESSED*)
        ((= const 1) 'intera_core_msgs::RobotAssemblyState::*ESTOP_BUTTON_PRESSED*)
        ((= const 2) 'intera_core_msgs::RobotAssemblyState::*ESTOP_BUTTON_UNKNOWN*)
        ((= const 3) 'intera_core_msgs::RobotAssemblyState::*ESTOP_BUTTON_RELEASED*)
        ((= const 0) 'intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_NONE*)
        ((= const 1) 'intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_USER*)
        ((= const 2) 'intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_UNKNOWN*)
        ((= const 3) 'intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_FAULT*)
        ((= const 4) 'intera_core_msgs::RobotAssemblyState::*ESTOP_SOURCE_ENGINE*)
        (t nil)))

(defclass intera_core_msgs::RobotAssemblyState
  :super ros::object
  :slots (_homed _ready _enabled _stopped _error _lowVoltage _estop_button _estop_source ))

(defmethod intera_core_msgs::RobotAssemblyState
  (:init
   (&key
    ((:homed __homed) nil)
    ((:ready __ready) nil)
    ((:enabled __enabled) nil)
    ((:stopped __stopped) nil)
    ((:error __error) nil)
    ((:lowVoltage __lowVoltage) nil)
    ((:estop_button __estop_button) 0)
    ((:estop_source __estop_source) 0)
    )
   (send-super :init)
   (setq _homed __homed)
   (setq _ready __ready)
   (setq _enabled __enabled)
   (setq _stopped __stopped)
   (setq _error __error)
   (setq _lowVoltage __lowVoltage)
   (setq _estop_button (round __estop_button))
   (setq _estop_source (round __estop_source))
   self)
  (:homed
   (&optional (__homed :null))
   (if (not (eq __homed :null)) (setq _homed __homed)) _homed)
  (:ready
   (&optional (__ready :null))
   (if (not (eq __ready :null)) (setq _ready __ready)) _ready)
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
  (:stopped
   (&optional (__stopped :null))
   (if (not (eq __stopped :null)) (setq _stopped __stopped)) _stopped)
  (:error
   (&optional (__error :null))
   (if (not (eq __error :null)) (setq _error __error)) _error)
  (:lowVoltage
   (&optional (__lowVoltage :null))
   (if (not (eq __lowVoltage :null)) (setq _lowVoltage __lowVoltage)) _lowVoltage)
  (:estop_button
   (&optional __estop_button)
   (if __estop_button (setq _estop_button __estop_button)) _estop_button)
  (:estop_source
   (&optional __estop_source)
   (if __estop_source (setq _estop_source __estop_source)) _estop_source)
  (:serialization-length
   ()
   (+
    ;; bool _homed
    1
    ;; bool _ready
    1
    ;; bool _enabled
    1
    ;; bool _stopped
    1
    ;; bool _error
    1
    ;; bool _lowVoltage
    1
    ;; uint8 _estop_button
    1
    ;; uint8 _estop_source
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _homed
       (if _homed (write-byte -1 s) (write-byte 0 s))
     ;; bool _ready
       (if _ready (write-byte -1 s) (write-byte 0 s))
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _stopped
       (if _stopped (write-byte -1 s) (write-byte 0 s))
     ;; bool _error
       (if _error (write-byte -1 s) (write-byte 0 s))
     ;; bool _lowVoltage
       (if _lowVoltage (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _estop_button
       (write-byte _estop_button s)
     ;; uint8 _estop_source
       (write-byte _estop_source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _homed
     (setq _homed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ready
     (setq _ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stopped
     (setq _stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error
     (setq _error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lowVoltage
     (setq _lowVoltage (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _estop_button
     (setq _estop_button (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _estop_source
     (setq _estop_source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get intera_core_msgs::RobotAssemblyState :md5sum-) "df79ce5f75a6b23626e9fcdf1cc4d298")
(setf (get intera_core_msgs::RobotAssemblyState :datatype-) "intera_core_msgs/RobotAssemblyState")
(setf (get intera_core_msgs::RobotAssemblyState :definition-)
      "bool homed               # true if all joints are homed
bool ready               # true if enabled and ready to operate, e.g., not homing
bool enabled             # true if enabled
bool stopped             # true if stopped -- e-stop asserted
bool error               # true if a component of the assembly has an error
bool lowVoltage          # true when the robot is in low voltage mode

# The following are specific to the robot top-level assembly:
uint8  estop_button      # One of the following:
  uint8   ESTOP_BUTTON_UNPRESSED = 0   # Robot is not stopped and button is not pressed
  uint8   ESTOP_BUTTON_PRESSED   = 1
  uint8   ESTOP_BUTTON_UNKNOWN   = 2   # STATE_UNKNOWN when estop was asserted by a non-user source
  uint8   ESTOP_BUTTON_RELEASED  = 3   # Was pressed, is now known to be released, but robot is still stopped.
#
uint8  estop_source      # If stopped is true, the source of the e-stop.  One of the following:
  uint8  ESTOP_SOURCE_NONE      = 0   # e-stop is not asserted
  uint8  ESTOP_SOURCE_USER      = 1   # e-stop source is user input (the red button)
  uint8  ESTOP_SOURCE_UNKNOWN   = 2   # e-stop source is unknown
  uint8  ESTOP_SOURCE_FAULT     = 3   # MotorController asserted e-stop in response to a joint fault
  uint8  ESTOP_SOURCE_ENGINE    = 4   # MotorController asserted e-stop in response to engine request

")



(provide :intera_core_msgs/RobotAssemblyState "df79ce5f75a6b23626e9fcdf1cc4d298")


