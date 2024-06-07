;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IOComponentCommandSrv)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IOComponentCommandSrv (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IOCOMPONENTCOMMANDSRV")
  (make-package "INTERA_CORE_MSGS::IOCOMPONENTCOMMANDSRV"))
(unless (find-package "INTERA_CORE_MSGS::IOCOMPONENTCOMMANDSRVREQUEST")
  (make-package "INTERA_CORE_MSGS::IOCOMPONENTCOMMANDSRVREQUEST"))
(unless (find-package "INTERA_CORE_MSGS::IOCOMPONENTCOMMANDSRVRESPONSE")
  (make-package "INTERA_CORE_MSGS::IOCOMPONENTCOMMANDSRVRESPONSE"))

(in-package "ROS")





(defclass intera_core_msgs::IOComponentCommandSrvRequest
  :super ros::object
  :slots (_command _timeout ))

(defmethod intera_core_msgs::IOComponentCommandSrvRequest
  (:init
   (&key
    ((:command __command) (instance intera_core_msgs::IOComponentCommand :init))
    ((:timeout __timeout) 0.0)
    )
   (send-super :init)
   (setq _command __command)
   (setq _timeout (float __timeout))
   self)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; intera_core_msgs/IOComponentCommand _command
    (send _command :serialization-length)
    ;; float32 _timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; intera_core_msgs/IOComponentCommand _command
       (send _command :serialize s)
     ;; float32 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; intera_core_msgs/IOComponentCommand _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;; float32 _timeout
     (setq _timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass intera_core_msgs::IOComponentCommandSrvResponse
  :super ros::object
  :slots (_time _op _status _response ))

(defmethod intera_core_msgs::IOComponentCommandSrvResponse
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:op __op) "")
    ((:status __status) (instance intera_core_msgs::IOStatus :init))
    ((:response __response) "")
    )
   (send-super :init)
   (setq _time __time)
   (setq _op (string __op))
   (setq _status __status)
   (setq _response (string __response))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:op
   (&optional __op)
   (if __op (setq _op __op)) _op)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; string _op
    4 (length _op)
    ;; intera_core_msgs/IOStatus _status
    (send _status :serialization-length)
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; string _op
       (write-long (length _op) s) (princ _op s)
     ;; intera_core_msgs/IOStatus _status
       (send _status :serialize s)
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _op
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _op (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; intera_core_msgs/IOStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass intera_core_msgs::IOComponentCommandSrv
  :super ros::object
  :slots ())

(setf (get intera_core_msgs::IOComponentCommandSrv :md5sum-) "bcb324504e5e34d907a1b6d881f436cd")
(setf (get intera_core_msgs::IOComponentCommandSrv :datatype-) "intera_core_msgs/IOComponentCommandSrv")
(setf (get intera_core_msgs::IOComponentCommandSrv :request) intera_core_msgs::IOComponentCommandSrvRequest)
(setf (get intera_core_msgs::IOComponentCommandSrv :response) intera_core_msgs::IOComponentCommandSrvResponse)

(defmethod intera_core_msgs::IOComponentCommandSrvRequest
  (:response () (instance intera_core_msgs::IOComponentCommandSrvResponse :init)))

(setf (get intera_core_msgs::IOComponentCommandSrvRequest :md5sum-) "bcb324504e5e34d907a1b6d881f436cd")
(setf (get intera_core_msgs::IOComponentCommandSrvRequest :datatype-) "intera_core_msgs/IOComponentCommandSrvRequest")
(setf (get intera_core_msgs::IOComponentCommandSrvRequest :definition-)
      "## IO Component Command service call
IOComponentCommand command
float32 timeout  # max seconds to handle the request, default used if 0.0

================================================================================
MSG: intera_core_msgs/IOComponentCommand
## IO Component Command
time time      # time the message was created, serves as a sequence number
string op      # operation to perform
string args    # JSON arguments
---
time time               # time the request was handled, serves as a sequence number
string op               # operation performed
IOStatus status         # status response
string response         # (OPTIONAL) command-specific response JSON data (e.g. resulting config)


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

(setf (get intera_core_msgs::IOComponentCommandSrvResponse :md5sum-) "bcb324504e5e34d907a1b6d881f436cd")
(setf (get intera_core_msgs::IOComponentCommandSrvResponse :datatype-) "intera_core_msgs/IOComponentCommandSrvResponse")
(setf (get intera_core_msgs::IOComponentCommandSrvResponse :definition-)
      "## IO Component Command service call
IOComponentCommand command
float32 timeout  # max seconds to handle the request, default used if 0.0

================================================================================
MSG: intera_core_msgs/IOComponentCommand
## IO Component Command
time time      # time the message was created, serves as a sequence number
string op      # operation to perform
string args    # JSON arguments
---
time time               # time the request was handled, serves as a sequence number
string op               # operation performed
IOStatus status         # status response
string response         # (OPTIONAL) command-specific response JSON data (e.g. resulting config)


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



(provide :intera_core_msgs/IOComponentCommandSrv "bcb324504e5e34d907a1b6d881f436cd")


