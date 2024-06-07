;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IONodeConfiguration)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IONodeConfiguration (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IONODECONFIGURATION")
  (make-package "INTERA_CORE_MSGS::IONODECONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude IONodeConfiguration.msg.html


(defclass intera_core_msgs::IONodeConfiguration
  :super ros::object
  :slots (_time _node _devices _plugins ))

(defmethod intera_core_msgs::IONodeConfiguration
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:node __node) (instance intera_core_msgs::IOComponentConfiguration :init))
    ((:devices __devices) ())
    ((:plugins __plugins) ())
    )
   (send-super :init)
   (setq _time __time)
   (setq _node __node)
   (setq _devices __devices)
   (setq _plugins __plugins)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:devices
   (&rest __devices)
   (if (keywordp (car __devices))
       (send* _devices __devices)
     (progn
       (if __devices (setq _devices (car __devices)))
       _devices)))
  (:plugins
   (&rest __plugins)
   (if (keywordp (car __plugins))
       (send* _plugins __plugins)
     (progn
       (if __plugins (setq _plugins (car __plugins)))
       _plugins)))
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; intera_core_msgs/IOComponentConfiguration _node
    (send _node :serialization-length)
    ;; intera_core_msgs/IOComponentConfiguration[] _devices
    (apply #'+ (send-all _devices :serialization-length)) 4
    ;; intera_core_msgs/IOComponentConfiguration[] _plugins
    (apply #'+ (send-all _plugins :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; intera_core_msgs/IOComponentConfiguration _node
       (send _node :serialize s)
     ;; intera_core_msgs/IOComponentConfiguration[] _devices
     (write-long (length _devices) s)
     (dolist (elem _devices)
       (send elem :serialize s)
       )
     ;; intera_core_msgs/IOComponentConfiguration[] _plugins
     (write-long (length _plugins) s)
     (dolist (elem _plugins)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; intera_core_msgs/IOComponentConfiguration _node
     (send _node :deserialize buf ptr-) (incf ptr- (send _node :serialization-length))
   ;; intera_core_msgs/IOComponentConfiguration[] _devices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _devices (let (r) (dotimes (i n) (push (instance intera_core_msgs::IOComponentConfiguration :init) r)) r))
     (dolist (elem- _devices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; intera_core_msgs/IOComponentConfiguration[] _plugins
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plugins (let (r) (dotimes (i n) (push (instance intera_core_msgs::IOComponentConfiguration :init) r)) r))
     (dolist (elem- _plugins)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get intera_core_msgs::IONodeConfiguration :md5sum-) "66800b32dbb52df00e2454d58668ac33")
(setf (get intera_core_msgs::IONodeConfiguration :datatype-) "intera_core_msgs/IONodeConfiguration")
(setf (get intera_core_msgs::IONodeConfiguration :definition-)
      "# IO Node Configuration
time time                           # configuration command timestamp
IOComponentConfiguration node       # IO Node configuration
IOComponentConfiguration[] devices  # configuration of IO Devices in this node
IOComponentConfiguration[] plugins  # configuration of IO Device Plugins in this node

================================================================================
MSG: intera_core_msgs/IOComponentConfiguration
## IO Component configuration data
string name                           # component name
string config                         # component configuration JSON

")



(provide :intera_core_msgs/IONodeConfiguration "66800b32dbb52df00e2454d58668ac33")


