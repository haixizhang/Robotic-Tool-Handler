;; Auto-generated. Do not edit!


(when (boundp 'pot_control::PotValue)
  (if (not (find-package "POT_CONTROL"))
    (make-package "POT_CONTROL"))
  (shadow 'PotValue (find-package "POT_CONTROL")))
(unless (find-package "POT_CONTROL::POTVALUE")
  (make-package "POT_CONTROL::POTVALUE"))

(in-package "ROS")
;;//! \htmlinclude PotValue.msg.html


(defclass pot_control::PotValue
  :super ros::object
  :slots (_values ))

(defmethod pot_control::PotValue
  (:init
   (&key
    ((:values __values) (make-array 2 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; float32[2] _values
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[2] _values
     (dotimes (i 2)
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[2] _values
   (dotimes (i (length _values))
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get pot_control::PotValue :md5sum-) "c334281ada2d017b8a6955b9529fd69a")
(setf (get pot_control::PotValue :datatype-) "pot_control/PotValue")
(setf (get pot_control::PotValue :definition-)
      "float32[2] values

")



(provide :pot_control/PotValue "c334281ada2d017b8a6955b9529fd69a")


