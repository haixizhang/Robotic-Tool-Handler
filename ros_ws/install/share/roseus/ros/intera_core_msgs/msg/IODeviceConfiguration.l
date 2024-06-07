;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IODeviceConfiguration)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IODeviceConfiguration (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IODEVICECONFIGURATION")
  (make-package "INTERA_CORE_MSGS::IODEVICECONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude IODeviceConfiguration.msg.html


(defclass intera_core_msgs::IODeviceConfiguration
  :super ros::object
  :slots (_time _commanded _upgraded _device _ports _signals ))

(defmethod intera_core_msgs::IODeviceConfiguration
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:commanded __commanded) "")
    ((:upgraded __upgraded) "")
    ((:device __device) (instance intera_core_msgs::IOComponentConfiguration :init))
    ((:ports __ports) ())
    ((:signals __signals) ())
    )
   (send-super :init)
   (setq _time __time)
   (setq _commanded (string __commanded))
   (setq _upgraded (string __upgraded))
   (setq _device __device)
   (setq _ports __ports)
   (setq _signals __signals)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:commanded
   (&optional __commanded)
   (if __commanded (setq _commanded __commanded)) _commanded)
  (:upgraded
   (&optional __upgraded)
   (if __upgraded (setq _upgraded __upgraded)) _upgraded)
  (:device
   (&rest __device)
   (if (keywordp (car __device))
       (send* _device __device)
     (progn
       (if __device (setq _device (car __device)))
       _device)))
  (:ports
   (&rest __ports)
   (if (keywordp (car __ports))
       (send* _ports __ports)
     (progn
       (if __ports (setq _ports (car __ports)))
       _ports)))
  (:signals
   (&rest __signals)
   (if (keywordp (car __signals))
       (send* _signals __signals)
     (progn
       (if __signals (setq _signals (car __signals)))
       _signals)))
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; string _commanded
    4 (length _commanded)
    ;; string _upgraded
    4 (length _upgraded)
    ;; intera_core_msgs/IOComponentConfiguration _device
    (send _device :serialization-length)
    ;; intera_core_msgs/IOComponentConfiguration[] _ports
    (apply #'+ (send-all _ports :serialization-length)) 4
    ;; intera_core_msgs/IOComponentConfiguration[] _signals
    (apply #'+ (send-all _signals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; string _commanded
       (write-long (length _commanded) s) (princ _commanded s)
     ;; string _upgraded
       (write-long (length _upgraded) s) (princ _upgraded s)
     ;; intera_core_msgs/IOComponentConfiguration _device
       (send _device :serialize s)
     ;; intera_core_msgs/IOComponentConfiguration[] _ports
     (write-long (length _ports) s)
     (dolist (elem _ports)
       (send elem :serialize s)
       )
     ;; intera_core_msgs/IOComponentConfiguration[] _signals
     (write-long (length _signals) s)
     (dolist (elem _signals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _commanded
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _commanded (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _upgraded
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _upgraded (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; intera_core_msgs/IOComponentConfiguration _device
     (send _device :deserialize buf ptr-) (incf ptr- (send _device :serialization-length))
   ;; intera_core_msgs/IOComponentConfiguration[] _ports
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ports (let (r) (dotimes (i n) (push (instance intera_core_msgs::IOComponentConfiguration :init) r)) r))
     (dolist (elem- _ports)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; intera_core_msgs/IOComponentConfiguration[] _signals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signals (let (r) (dotimes (i n) (push (instance intera_core_msgs::IOComponentConfiguration :init) r)) r))
     (dolist (elem- _signals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get intera_core_msgs::IODeviceConfiguration :md5sum-) "6757fad6217033498191470cb08f1674")
(setf (get intera_core_msgs::IODeviceConfiguration :datatype-) "intera_core_msgs/IODeviceConfiguration")
(setf (get intera_core_msgs::IODeviceConfiguration :definition-)
      "## IO Device Configuration
time time                             # configuration command timestamp
string commanded                      # configuration command JSON
string upgraded                       # configuration command JSON, upgraded to current schema revision
IOComponentConfiguration   device     # instantiated device configuration
IOComponentConfiguration[] ports      # instantiated port configurations
IOComponentConfiguration[] signals    # instantiated signal configurations

================================================================================
MSG: intera_core_msgs/IOComponentConfiguration
## IO Component configuration data
string name                           # component name
string config                         # component configuration JSON

")



(provide :intera_core_msgs/IODeviceConfiguration "6757fad6217033498191470cb08f1674")


