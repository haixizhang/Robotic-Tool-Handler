;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::HeadState)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'HeadState (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::HEADSTATE")
  (make-package "INTERA_CORE_MSGS::HEADSTATE"))

(in-package "ROS")
;;//! \htmlinclude HeadState.msg.html


(intern "*PASSIVE_MODE*" (find-package "INTERA_CORE_MSGS::HEADSTATE"))
(shadow '*PASSIVE_MODE* (find-package "INTERA_CORE_MSGS::HEADSTATE"))
(defconstant intera_core_msgs::HeadState::*PASSIVE_MODE* 0)
(intern "*ACTIVE_MODE*" (find-package "INTERA_CORE_MSGS::HEADSTATE"))
(shadow '*ACTIVE_MODE* (find-package "INTERA_CORE_MSGS::HEADSTATE"))
(defconstant intera_core_msgs::HeadState::*ACTIVE_MODE* 1)
(intern "*ACTIVE_CANCELLATION_MODE*" (find-package "INTERA_CORE_MSGS::HEADSTATE"))
(shadow '*ACTIVE_CANCELLATION_MODE* (find-package "INTERA_CORE_MSGS::HEADSTATE"))
(defconstant intera_core_msgs::HeadState::*ACTIVE_CANCELLATION_MODE* 2)

(defun intera_core_msgs::HeadState-to-symbol (const)
  (cond
        ((= const 0) 'intera_core_msgs::HeadState::*PASSIVE_MODE*)
        ((= const 1) 'intera_core_msgs::HeadState::*ACTIVE_MODE*)
        ((= const 2) 'intera_core_msgs::HeadState::*ACTIVE_CANCELLATION_MODE*)
        (t nil)))

(defclass intera_core_msgs::HeadState
  :super ros::object
  :slots (_pan _isTurning _isBlocked _panMode ))

(defmethod intera_core_msgs::HeadState
  (:init
   (&key
    ((:pan __pan) 0.0)
    ((:isTurning __isTurning) nil)
    ((:isBlocked __isBlocked) nil)
    ((:panMode __panMode) 0)
    )
   (send-super :init)
   (setq _pan (float __pan))
   (setq _isTurning __isTurning)
   (setq _isBlocked __isBlocked)
   (setq _panMode (round __panMode))
   self)
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:isTurning
   (&optional (__isTurning :null))
   (if (not (eq __isTurning :null)) (setq _isTurning __isTurning)) _isTurning)
  (:isBlocked
   (&optional (__isBlocked :null))
   (if (not (eq __isBlocked :null)) (setq _isBlocked __isBlocked)) _isBlocked)
  (:panMode
   (&optional __panMode)
   (if __panMode (setq _panMode __panMode)) _panMode)
  (:serialization-length
   ()
   (+
    ;; float32 _pan
    4
    ;; bool _isTurning
    1
    ;; bool _isBlocked
    1
    ;; uint8 _panMode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isTurning
       (if _isTurning (write-byte -1 s) (write-byte 0 s))
     ;; bool _isBlocked
       (if _isBlocked (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _panMode
       (write-byte _panMode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isTurning
     (setq _isTurning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isBlocked
     (setq _isBlocked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _panMode
     (setq _panMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get intera_core_msgs::HeadState :md5sum-) "51024ade10ffefe117049c9ba6fd743c")
(setf (get intera_core_msgs::HeadState :datatype-) "intera_core_msgs/HeadState")
(setf (get intera_core_msgs::HeadState :definition-)
      "float32 pan
bool isTurning

# isBlocked will be true during active cancellation when the desired head position
# can not be reached because of j0's current position
bool isBlocked

# panMode will be one of
uint8 PASSIVE_MODE             = 0
uint8 ACTIVE_MODE              = 1
uint8 ACTIVE_CANCELLATION_MODE = 2
#
uint8 panMode



")



(provide :intera_core_msgs/HeadState "51024ade10ffefe117049c9ba6fd743c")


