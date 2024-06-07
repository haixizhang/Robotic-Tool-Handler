;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IODataStatus)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IODataStatus (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IODATASTATUS")
  (make-package "INTERA_CORE_MSGS::IODATASTATUS"))

(in-package "ROS")
;;//! \htmlinclude IODataStatus.msg.html


(defclass intera_core_msgs::IODataStatus
  :super ros::object
  :slots (_name _format _data _status ))

(defmethod intera_core_msgs::IODataStatus
  (:init
   (&key
    ((:name __name) "")
    ((:format __format) "")
    ((:data __data) "")
    ((:status __status) (instance intera_core_msgs::IOStatus :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _format (string __format))
   (setq _data (string __data))
   (setq _status __status)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _format
    4 (length _format)
    ;; string _data
    4 (length _data)
    ;; intera_core_msgs/IOStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _format
       (write-long (length _format) s) (princ _format s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; intera_core_msgs/IOStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; intera_core_msgs/IOStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get intera_core_msgs::IODataStatus :md5sum-) "bb31283c6afc4ddea2f5f157264e5909")
(setf (get intera_core_msgs::IODataStatus :datatype-) "intera_core_msgs/IODataStatus")
(setf (get intera_core_msgs::IODataStatus :definition-)
      "## IO Data Status
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



(provide :intera_core_msgs/IODataStatus "bb31283c6afc4ddea2f5f157264e5909")


