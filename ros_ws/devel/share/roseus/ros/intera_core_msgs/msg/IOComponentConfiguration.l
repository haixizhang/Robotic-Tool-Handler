;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IOComponentConfiguration)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IOComponentConfiguration (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IOCOMPONENTCONFIGURATION")
  (make-package "INTERA_CORE_MSGS::IOCOMPONENTCONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude IOComponentConfiguration.msg.html


(defclass intera_core_msgs::IOComponentConfiguration
  :super ros::object
  :slots (_name _config ))

(defmethod intera_core_msgs::IOComponentConfiguration
  (:init
   (&key
    ((:name __name) "")
    ((:config __config) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _config (string __config))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:config
   (&optional __config)
   (if __config (setq _config __config)) _config)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _config
    4 (length _config)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _config
       (write-long (length _config) s) (princ _config s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _config
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _config (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get intera_core_msgs::IOComponentConfiguration :md5sum-) "cb7717d13a521b51b5c0a02d493c42fd")
(setf (get intera_core_msgs::IOComponentConfiguration :datatype-) "intera_core_msgs/IOComponentConfiguration")
(setf (get intera_core_msgs::IOComponentConfiguration :definition-)
      "## IO Component configuration data
string name                           # component name
string config                         # component configuration JSON

")



(provide :intera_core_msgs/IOComponentConfiguration "cb7717d13a521b51b5c0a02d493c42fd")


