;; Auto-generated. Do not edit!


(when (boundp 'motor_control::MotorCommand)
  (if (not (find-package "MOTOR_CONTROL"))
    (make-package "MOTOR_CONTROL"))
  (shadow 'MotorCommand (find-package "MOTOR_CONTROL")))
(unless (find-package "MOTOR_CONTROL::MOTORCOMMAND")
  (make-package "MOTOR_CONTROL::MOTORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MotorCommand.msg.html


(defclass motor_control::MotorCommand
  :super ros::object
  :slots (_channel _angle ))

(defmethod motor_control::MotorCommand
  (:init
   (&key
    ((:channel __channel) 0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _angle (float __angle))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; char _channel
    1
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char _channel
       (write-byte _channel s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motor_control::MotorCommand :md5sum-) "db68853cfad241b5e822c1fa82650502")
(setf (get motor_control::MotorCommand :datatype-) "motor_control/MotorCommand")
(setf (get motor_control::MotorCommand :definition-)
      "char channel
float32 angle

")



(provide :motor_control/MotorCommand "db68853cfad241b5e822c1fa82650502")


