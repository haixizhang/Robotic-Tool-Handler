;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::EndpointNamesArray)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'EndpointNamesArray (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::ENDPOINTNAMESARRAY")
  (make-package "INTERA_CORE_MSGS::ENDPOINTNAMESARRAY"))

(in-package "ROS")
;;//! \htmlinclude EndpointNamesArray.msg.html


(defclass intera_core_msgs::EndpointNamesArray
  :super ros::object
  :slots (_endpoint_names ))

(defmethod intera_core_msgs::EndpointNamesArray
  (:init
   (&key
    ((:endpoint_names __endpoint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _endpoint_names __endpoint_names)
   self)
  (:endpoint_names
   (&optional __endpoint_names)
   (if __endpoint_names (setq _endpoint_names __endpoint_names)) _endpoint_names)
  (:serialization-length
   ()
   (+
    ;; string[] _endpoint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _endpoint_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _endpoint_names
     (write-long (length _endpoint_names) s)
     (dolist (elem _endpoint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _endpoint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _endpoint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _endpoint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get intera_core_msgs::EndpointNamesArray :md5sum-) "6bf0a2d04056051f84da1291f261f35a")
(setf (get intera_core_msgs::EndpointNamesArray :datatype-) "intera_core_msgs/EndpointNamesArray")
(setf (get intera_core_msgs::EndpointNamesArray :definition-)
      "string[] endpoint_names

")



(provide :intera_core_msgs/EndpointNamesArray "6bf0a2d04056051f84da1291f261f35a")


