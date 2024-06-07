;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IONodeStatus)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IONodeStatus (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IONODESTATUS")
  (make-package "INTERA_CORE_MSGS::IONODESTATUS"))

(in-package "ROS")
;;//! \htmlinclude IONodeStatus.msg.html


(defclass intera_core_msgs::IONodeStatus
  :super ros::object
  :slots (_time _node _devices _commands ))

(defmethod intera_core_msgs::IONodeStatus
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:node __node) (instance intera_core_msgs::IOComponentStatus :init))
    ((:devices __devices) ())
    ((:commands __commands) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _time __time)
   (setq _node __node)
   (setq _devices __devices)
   (setq _commands __commands)
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
  (:commands
   (&optional __commands)
   (if __commands (setq _commands __commands)) _commands)
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; intera_core_msgs/IOComponentStatus _node
    (send _node :serialization-length)
    ;; intera_core_msgs/IOComponentStatus[] _devices
    (apply #'+ (send-all _devices :serialization-length)) 4
    ;; time[] _commands
    (* 8    (length _commands)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; intera_core_msgs/IOComponentStatus _node
       (send _node :serialize s)
     ;; intera_core_msgs/IOComponentStatus[] _devices
     (write-long (length _devices) s)
     (dolist (elem _devices)
       (send elem :serialize s)
       )
     ;; time[] _commands
     (write-long (length _commands) s)
     (dotimes (i (length _commands))
       (write-long (send (elt _commands i) :sec) s) (write-long (send (elt _commands i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; intera_core_msgs/IOComponentStatus _node
     (send _node :deserialize buf ptr-) (incf ptr- (send _node :serialization-length))
   ;; intera_core_msgs/IOComponentStatus[] _devices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _devices (let (r) (dotimes (i n) (push (instance intera_core_msgs::IOComponentStatus :init) r)) r))
     (dolist (elem- _devices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; time[] _commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commands (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _commands)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get intera_core_msgs::IONodeStatus :md5sum-) "260fce3c02f43bd977c92642b3c09c1d")
(setf (get intera_core_msgs::IONodeStatus :datatype-) "intera_core_msgs/IONodeStatus")
(setf (get intera_core_msgs::IONodeStatus :definition-)
      "# IO Node Status
time time                    # time the message was created
IOComponentStatus node       # IO Node status
IOComponentStatus[] devices  # status of IO Devices in this node
time[] commands              # recent command timestamps, for syncing
================================================================================
MSG: intera_core_msgs/IOComponentStatus
## IO Component status data
string name            # component name
IOStatus status        # component status
#



================================================================================
MSG: intera_core_msgs/IOStatus
## IO status data
#
string tag             # one of the values listed below
#   down     Inoperative, not fully instantiated
#   ready    OK, fully operational
#   busy     OK, not ready to output data; input data value may be stale
#   unready  OK, not operational; data is invalid
#   error    Error, not operational
string DOWN      = down
string READY     = ready
string BUSY      = busy
string UNREADY   = unready
string ERROR     = error
#
string id             # message id, for internationalization
#
string detail         # optional additional status detail
#

")



(provide :intera_core_msgs/IONodeStatus "260fce3c02f43bd977c92642b3c09c1d")


