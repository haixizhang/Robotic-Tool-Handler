;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::HomingState)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'HomingState (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::HOMINGSTATE")
  (make-package "INTERA_CORE_MSGS::HOMINGSTATE"))

(in-package "ROS")
;;//! \htmlinclude HomingState.msg.html


(intern "*HOMED*" (find-package "INTERA_CORE_MSGS::HOMINGSTATE"))
(shadow '*HOMED* (find-package "INTERA_CORE_MSGS::HOMINGSTATE"))
(defconstant intera_core_msgs::HomingState::*HOMED* 0)
(intern "*HOMING*" (find-package "INTERA_CORE_MSGS::HOMINGSTATE"))
(shadow '*HOMING* (find-package "INTERA_CORE_MSGS::HOMINGSTATE"))
(defconstant intera_core_msgs::HomingState::*HOMING* 1)
(intern "*NOT_HOMED*" (find-package "INTERA_CORE_MSGS::HOMINGSTATE"))
(shadow '*NOT_HOMED* (find-package "INTERA_CORE_MSGS::HOMINGSTATE"))
(defconstant intera_core_msgs::HomingState::*NOT_HOMED* 2)

(defun intera_core_msgs::HomingState-to-symbol (const)
  (cond
        ((= const 0) 'intera_core_msgs::HomingState::*HOMED*)
        ((= const 1) 'intera_core_msgs::HomingState::*HOMING*)
        ((= const 2) 'intera_core_msgs::HomingState::*NOT_HOMED*)
        (t nil)))

(defclass intera_core_msgs::HomingState
  :super ros::object
  :slots (_name _state ))

(defmethod intera_core_msgs::HomingState
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:state __state) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _name __name)
   (setq _state __state)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; int32[] _state
    (* 4    (length _state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (write-long (elt _state i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get intera_core_msgs::HomingState :md5sum-) "eacb82bc7d74638daa749d9caab52b99")
(setf (get intera_core_msgs::HomingState :datatype-) "intera_core_msgs/HomingState")
(setf (get intera_core_msgs::HomingState :definition-)
      "# This holds the homing state for each movable joint on the robot.
# A joint is in the HOMING state when a HomingCommand message enables
# homing and the joint is not yet homed.
# Joints that do not need homing are always in the HOMED state.
string[] name
int32[]  state
# Valid homing states:
int32 HOMED=0
int32 HOMING=1
int32 NOT_HOMED=2


")



(provide :intera_core_msgs/HomingState "eacb82bc7d74638daa749d9caab52b99")


