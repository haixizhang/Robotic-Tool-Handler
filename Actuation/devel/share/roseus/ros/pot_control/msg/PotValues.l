;; Auto-generated. Do not edit!


(when (boundp 'pot_control::PotValues)
  (if (not (find-package "POT_CONTROL"))
    (make-package "POT_CONTROL"))
  (shadow 'PotValues (find-package "POT_CONTROL")))
(unless (find-package "POT_CONTROL::POTVALUES")
  (make-package "POT_CONTROL::POTVALUES"))

(in-package "ROS")
;;//! \htmlinclude PotValues.msg.html


(defclass pot_control::PotValues
  :super ros::object
  :slots (_potvalues ))

(defmethod pot_control::PotValues
  (:init
   (&key
    ((:potvalues __potvalues) ())
    )
   (send-super :init)
   (setq _potvalues __potvalues)
   self)
  (:potvalues
   (&rest __potvalues)
   (if (keywordp (car __potvalues))
       (send* _potvalues __potvalues)
     (progn
       (if __potvalues (setq _potvalues (car __potvalues)))
       _potvalues)))
  (:serialization-length
   ()
   (+
    ;; pot_control/PotValue[] _potvalues
    (apply #'+ (send-all _potvalues :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pot_control/PotValue[] _potvalues
     (write-long (length _potvalues) s)
     (dolist (elem _potvalues)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pot_control/PotValue[] _potvalues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _potvalues (let (r) (dotimes (i n) (push (instance pot_control::PotValue :init) r)) r))
     (dolist (elem- _potvalues)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pot_control::PotValues :md5sum-) "6e183ac20561a041ec8e4a989a1a2404")
(setf (get pot_control::PotValues :datatype-) "pot_control/PotValues")
(setf (get pot_control::PotValues :definition-)
      "PotValue[] potvalues

================================================================================
MSG: pot_control/PotValue
float32[2] values

")



(provide :pot_control/PotValues "6e183ac20561a041ec8e4a989a1a2404")


