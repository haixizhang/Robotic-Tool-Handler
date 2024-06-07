;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IOComponentCommand)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IOComponentCommand (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IOCOMPONENTCOMMAND")
  (make-package "INTERA_CORE_MSGS::IOCOMPONENTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude IOComponentCommand.msg.html


(defclass intera_core_msgs::IOComponentCommand
  :super ros::object
  :slots (_time _op _args ))

(defmethod intera_core_msgs::IOComponentCommand
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:op __op) "")
    ((:args __args) "")
    )
   (send-super :init)
   (setq _time __time)
   (setq _op (string __op))
   (setq _args (string __args))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:op
   (&optional __op)
   (if __op (setq _op __op)) _op)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; string _op
    4 (length _op)
    ;; string _args
    4 (length _args)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; string _op
       (write-long (length _op) s) (princ _op s)
     ;; string _args
       (write-long (length _args) s) (princ _args s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _op
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _op (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _args
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _args (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get intera_core_msgs::IOComponentCommand :md5sum-) "ede95ba2953dc221dc82cac20f697530")
(setf (get intera_core_msgs::IOComponentCommand :datatype-) "intera_core_msgs/IOComponentCommand")
(setf (get intera_core_msgs::IOComponentCommand :definition-)
      "## IO Component Command
time time      # time the message was created, serves as a sequence number
string op      # operation to perform
string args    # JSON arguments

")



(provide :intera_core_msgs/IOComponentCommand "ede95ba2953dc221dc82cac20f697530")


