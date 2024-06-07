;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::HeadPanCommand)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'HeadPanCommand (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND")
  (make-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude HeadPanCommand.msg.html


(intern "*MAX_SPEED_RATIO*" (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*MAX_SPEED_RATIO* (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(defconstant intera_core_msgs::HeadPanCommand::*MAX_SPEED_RATIO* 1.0)
(intern "*MIN_SPEED_RATIO*" (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*MIN_SPEED_RATIO* (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(defconstant intera_core_msgs::HeadPanCommand::*MIN_SPEED_RATIO* 0.0)
(intern "*SET_PASSIVE_MODE*" (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*SET_PASSIVE_MODE* (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(defconstant intera_core_msgs::HeadPanCommand::*SET_PASSIVE_MODE* 0)
(intern "*SET_ACTIVE_MODE*" (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*SET_ACTIVE_MODE* (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(defconstant intera_core_msgs::HeadPanCommand::*SET_ACTIVE_MODE* 1)
(intern "*SET_ACTIVE_CANCELLATION_MODE*" (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*SET_ACTIVE_CANCELLATION_MODE* (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(defconstant intera_core_msgs::HeadPanCommand::*SET_ACTIVE_CANCELLATION_MODE* 2)
(intern "*NO_MODE_CHANGE*" (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(shadow '*NO_MODE_CHANGE* (find-package "INTERA_CORE_MSGS::HEADPANCOMMAND"))
(defconstant intera_core_msgs::HeadPanCommand::*NO_MODE_CHANGE* 3)

(defun intera_core_msgs::HeadPanCommand-to-symbol (const)
  (cond
        ((= const 0) 'intera_core_msgs::HeadPanCommand::*SET_PASSIVE_MODE*)
        ((= const 1) 'intera_core_msgs::HeadPanCommand::*SET_ACTIVE_MODE*)
        ((= const 2) 'intera_core_msgs::HeadPanCommand::*SET_ACTIVE_CANCELLATION_MODE*)
        ((= const 3) 'intera_core_msgs::HeadPanCommand::*NO_MODE_CHANGE*)
        (t nil)))

(defclass intera_core_msgs::HeadPanCommand
  :super ros::object
  :slots (_target _speed_ratio _pan_mode ))

(defmethod intera_core_msgs::HeadPanCommand
  (:init
   (&key
    ((:target __target) 0.0)
    ((:speed_ratio __speed_ratio) 0.0)
    ((:pan_mode __pan_mode) 0)
    )
   (send-super :init)
   (setq _target (float __target))
   (setq _speed_ratio (float __speed_ratio))
   (setq _pan_mode (round __pan_mode))
   self)
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:speed_ratio
   (&optional __speed_ratio)
   (if __speed_ratio (setq _speed_ratio __speed_ratio)) _speed_ratio)
  (:pan_mode
   (&optional __pan_mode)
   (if __pan_mode (setq _pan_mode __pan_mode)) _pan_mode)
  (:serialization-length
   ()
   (+
    ;; float32 _target
    4
    ;; float32 _speed_ratio
    4
    ;; uint8 _pan_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _target
       (sys::poke _target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_ratio
       (sys::poke _speed_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _pan_mode
       (write-byte _pan_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _target
     (setq _target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_ratio
     (setq _speed_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _pan_mode
     (setq _pan_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get intera_core_msgs::HeadPanCommand :md5sum-) "5cb68e8755646564cf47813f91cee216")
(setf (get intera_core_msgs::HeadPanCommand :datatype-) "intera_core_msgs/HeadPanCommand")
(setf (get intera_core_msgs::HeadPanCommand :definition-)
      "float32 target              # radians for target, 0 str
float32 speed_ratio         # Percentage of max speed [0-1]
#
  float32 MAX_SPEED_RATIO = 1.0
  float32 MIN_SPEED_RATIO = 0.0
#
uint8   pan_mode  # set to one of constants below to change pan mode
# pan_mode possible states
  uint8   SET_PASSIVE_MODE = 0
  uint8   SET_ACTIVE_MODE = 1
  uint8   SET_ACTIVE_CANCELLATION_MODE = 2
  uint8   NO_MODE_CHANGE = 3
#

")



(provide :intera_core_msgs/HeadPanCommand "5cb68e8755646564cf47813f91cee216")


