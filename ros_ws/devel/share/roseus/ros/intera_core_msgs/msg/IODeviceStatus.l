;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IODeviceStatus)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IODeviceStatus (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IODEVICESTATUS")
  (make-package "INTERA_CORE_MSGS::IODEVICESTATUS"))

(in-package "ROS")
;;//! \htmlinclude IODeviceStatus.msg.html


(defclass intera_core_msgs::IODeviceStatus
  :super ros::object
  :slots (_time _device _ports _signals _commands _responses ))

(defmethod intera_core_msgs::IODeviceStatus
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:device __device) (instance intera_core_msgs::IOComponentStatus :init))
    ((:ports __ports) ())
    ((:signals __signals) ())
    ((:commands __commands) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    ((:responses __responses) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _time __time)
   (setq _device __device)
   (setq _ports __ports)
   (setq _signals __signals)
   (setq _commands __commands)
   (setq _responses __responses)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
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
  (:commands
   (&optional __commands)
   (if __commands (setq _commands __commands)) _commands)
  (:responses
   (&optional __responses)
   (if __responses (setq _responses __responses)) _responses)
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; intera_core_msgs/IOComponentStatus _device
    (send _device :serialization-length)
    ;; intera_core_msgs/IODataStatus[] _ports
    (apply #'+ (send-all _ports :serialization-length)) 4
    ;; intera_core_msgs/IODataStatus[] _signals
    (apply #'+ (send-all _signals :serialization-length)) 4
    ;; time[] _commands
    (* 8    (length _commands)) 4
    ;; string[] _responses
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _responses)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; intera_core_msgs/IOComponentStatus _device
       (send _device :serialize s)
     ;; intera_core_msgs/IODataStatus[] _ports
     (write-long (length _ports) s)
     (dolist (elem _ports)
       (send elem :serialize s)
       )
     ;; intera_core_msgs/IODataStatus[] _signals
     (write-long (length _signals) s)
     (dolist (elem _signals)
       (send elem :serialize s)
       )
     ;; time[] _commands
     (write-long (length _commands) s)
     (dotimes (i (length _commands))
       (write-long (send (elt _commands i) :sec) s) (write-long (send (elt _commands i) :nsec) s)
       )
     ;; string[] _responses
     (write-long (length _responses) s)
     (dolist (elem _responses)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; intera_core_msgs/IOComponentStatus _device
     (send _device :deserialize buf ptr-) (incf ptr- (send _device :serialization-length))
   ;; intera_core_msgs/IODataStatus[] _ports
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ports (let (r) (dotimes (i n) (push (instance intera_core_msgs::IODataStatus :init) r)) r))
     (dolist (elem- _ports)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; intera_core_msgs/IODataStatus[] _signals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signals (let (r) (dotimes (i n) (push (instance intera_core_msgs::IODataStatus :init) r)) r))
     (dolist (elem- _signals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; time[] _commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commands (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _commands)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _responses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _responses (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _responses i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get intera_core_msgs::IODeviceStatus :md5sum-) "0d0c97a2d700848e7ad46e09a77cf896")
(setf (get intera_core_msgs::IODeviceStatus :datatype-) "intera_core_msgs/IODeviceStatus")
(setf (get intera_core_msgs::IODeviceStatus :definition-)
      "## IO Device status
time time                  # time the message was created
IOComponentStatus device   # device status data
IODataStatus[]    ports    # Ports status
IODataStatus[]    signals  # Signals status
time[]            commands # recent command timestamps, for syncing
string[]          responses # recent command responses


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

================================================================================
MSG: intera_core_msgs/IODataStatus
## IO Data Status
string name       # IO Data Component name
string format     # data format:
                  # A JSON object containing one or more of the following fields:
                  # Required:
                  #   \"type\" : \"<type>\"  JSON Type, one of:
                  #                      \"bool\", \"int\", \"float\", \"string\", \"object\", \"array\"
                  #
                  # Optional:
                  #   \"dimensions\" : [ N,...] if absent, [ 1 ] is assumed.
                  #   \"role\"       : Signal: \"input\", \"output\"; Port:  \"sink\", \"source\"
                  #   \"data_type\"  : qualifier for the JSON type, may be device-specific
                  #                  int data_types:  \"uN\", \"sN\", \"NqM\"
                  #   other device-specific qualifiers may be used and will be passed through.
string data       # JSON data value.  An Array is expected, for example \"[ 0 ]\"
IOStatus status   # Data Component status

")



(provide :intera_core_msgs/IODeviceStatus "0d0c97a2d700848e7ad46e09a77cf896")


