;; Auto-generated. Do not edit!


(when (boundp 'motor_control::MotorCommands)
  (if (not (find-package "MOTOR_CONTROL"))
    (make-package "MOTOR_CONTROL"))
  (shadow 'MotorCommands (find-package "MOTOR_CONTROL")))
(unless (find-package "MOTOR_CONTROL::MOTORCOMMANDS")
  (make-package "MOTOR_CONTROL::MOTORCOMMANDS"))

(in-package "ROS")
;;//! \htmlinclude MotorCommands.msg.html


(defclass motor_control::MotorCommands
  :super ros::object
  :slots (_motorcommands ))

(defmethod motor_control::MotorCommands
  (:init
   (&key
    ((:motorcommands __motorcommands) ())
    )
   (send-super :init)
   (setq _motorcommands __motorcommands)
   self)
  (:motorcommands
   (&rest __motorcommands)
   (if (keywordp (car __motorcommands))
       (send* _motorcommands __motorcommands)
     (progn
       (if __motorcommands (setq _motorcommands (car __motorcommands)))
       _motorcommands)))
  (:serialization-length
   ()
   (+
    ;; motor_control/MotorCommand[] _motorcommands
    (apply #'+ (send-all _motorcommands :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; motor_control/MotorCommand[] _motorcommands
     (write-long (length _motorcommands) s)
     (dolist (elem _motorcommands)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; motor_control/MotorCommand[] _motorcommands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motorcommands (let (r) (dotimes (i n) (push (instance motor_control::MotorCommand :init) r)) r))
     (dolist (elem- _motorcommands)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get motor_control::MotorCommands :md5sum-) "b2edb3d2f4d8f2a09fe7cbec56216411")
(setf (get motor_control::MotorCommands :datatype-) "motor_control/MotorCommands")
(setf (get motor_control::MotorCommands :definition-)
      "MotorCommand[] motorcommands

================================================================================
MSG: motor_control/MotorCommand
char channel
float32 angle

")



(provide :motor_control/MotorCommands "b2edb3d2f4d8f2a09fe7cbec56216411")


