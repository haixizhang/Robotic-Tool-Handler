;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::HomingCommand)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'HomingCommand (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::HOMINGCOMMAND")
  (make-package "INTERA_CORE_MSGS::HOMINGCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude HomingCommand.msg.html


(intern "*MANUAL*" (find-package "INTERA_CORE_MSGS::HOMINGCOMMAND"))
(shadow '*MANUAL* (find-package "INTERA_CORE_MSGS::HOMINGCOMMAND"))
(defconstant intera_core_msgs::HomingCommand::*MANUAL* 1)
(intern "*AUTO*" (find-package "INTERA_CORE_MSGS::HOMINGCOMMAND"))
(shadow '*AUTO* (find-package "INTERA_CORE_MSGS::HOMINGCOMMAND"))
(defconstant intera_core_msgs::HomingCommand::*AUTO* 2)
(intern "*NONE*" (find-package "INTERA_CORE_MSGS::HOMINGCOMMAND"))
(shadow '*NONE* (find-package "INTERA_CORE_MSGS::HOMINGCOMMAND"))
(defconstant intera_core_msgs::HomingCommand::*NONE* 0)

(defun intera_core_msgs::HomingCommand-to-symbol (const)
  (cond
        ((= const 1) 'intera_core_msgs::HomingCommand::*MANUAL*)
        ((= const 2) 'intera_core_msgs::HomingCommand::*AUTO*)
        ((= const 0) 'intera_core_msgs::HomingCommand::*NONE*)
        (t nil)))

(defclass intera_core_msgs::HomingCommand
  :super ros::object
  :slots (_name _command ))

(defmethod intera_core_msgs::HomingCommand
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:command __command) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _name __name)
   (setq _command __command)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; int32[] _command
    (* 4    (length _command)) 4
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
     ;; int32[] _command
     (write-long (length _command) s)
     (dotimes (i (length _command))
       (write-long (elt _command i) s)
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
   ;; int32[] _command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _command (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _command i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get intera_core_msgs::HomingCommand :md5sum-) "ff29c86109f0f4cada5bbde945dd55c4")
(setf (get intera_core_msgs::HomingCommand :datatype-) "intera_core_msgs/HomingCommand")
(setf (get intera_core_msgs::HomingCommand :definition-)
      "# This message is used to command the homing state of all joints on the robot.
# For each joint in the name array the corresponding value in the command
# sets the homing mode for that joint.
# MANUAL disengages the joint brake and puts the joint in a \"gumby\" mode.
# AUTO disengages the joint brake and automatically homes the joint.
# If a joint is already homed the command has no effect.
string[] name
int32[]  command
# Valid homing commands:
int32 MANUAL=1
int32 AUTO=2
# Invalid, value is used internally:
int32 NONE=0



")



(provide :intera_core_msgs/HomingCommand "ff29c86109f0f4cada5bbde945dd55c4")


