;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IOStatus)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IOStatus (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IOSTATUS")
  (make-package "INTERA_CORE_MSGS::IOSTATUS"))

(in-package "ROS")
;;//! \htmlinclude IOStatus.msg.html


(intern "*DOWN*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*DOWN* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*DOWN* "down")
(intern "*READY*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*READY* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*READY* "ready")
(intern "*BUSY*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*BUSY* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*BUSY* "busy")
(intern "*UNREADY*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*UNREADY* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*UNREADY* "unready")
(intern "*ERROR*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*ERROR* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*ERROR* "error")

(defun intera_core_msgs::IOStatus-to-symbol (const)
  (cond
        (t nil)))

(defclass intera_core_msgs::IOStatus
  :super ros::object
  :slots (_tag _id _detail ))

(defmethod intera_core_msgs::IOStatus
  (:init
   (&key
    ((:tag __tag) "")
    ((:id __id) "")
    ((:detail __detail) "")
    )
   (send-super :init)
   (setq _tag (string __tag))
   (setq _id (string __id))
   (setq _detail (string __detail))
   self)
  (:tag
   (&optional __tag)
   (if __tag (setq _tag __tag)) _tag)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:detail
   (&optional __detail)
   (if __detail (setq _detail __detail)) _detail)
  (:serialization-length
   ()
   (+
    ;; string _tag
    4 (length _tag)
    ;; string _id
    4 (length _id)
    ;; string _detail
    4 (length _detail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tag
       (write-long (length _tag) s) (princ _tag s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _detail
       (write-long (length _detail) s) (princ _detail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _detail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get intera_core_msgs::IOStatus :md5sum-) "a8daeb84c9abffc88ad8ca636f5fd8a0")
(setf (get intera_core_msgs::IOStatus :datatype-) "intera_core_msgs/IOStatus")
(setf (get intera_core_msgs::IOStatus :definition-)
      "## IO status data
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



(provide :intera_core_msgs/IOStatus "a8daeb84c9abffc88ad8ca636f5fd8a0")


