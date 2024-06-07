;; Auto-generated. Do not edit!


(when (boundp 'voice_recognition_pkg::VerbNounPair)
  (if (not (find-package "VOICE_RECOGNITION_PKG"))
    (make-package "VOICE_RECOGNITION_PKG"))
  (shadow 'VerbNounPair (find-package "VOICE_RECOGNITION_PKG")))
(unless (find-package "VOICE_RECOGNITION_PKG::VERBNOUNPAIR")
  (make-package "VOICE_RECOGNITION_PKG::VERBNOUNPAIR"))

(in-package "ROS")
;;//! \htmlinclude VerbNounPair.msg.html


(defclass voice_recognition_pkg::VerbNounPair
  :super ros::object
  :slots (_verb _noun ))

(defmethod voice_recognition_pkg::VerbNounPair
  (:init
   (&key
    ((:verb __verb) 0)
    ((:noun __noun) 0)
    )
   (send-super :init)
   (setq _verb (round __verb))
   (setq _noun (round __noun))
   self)
  (:verb
   (&optional __verb)
   (if __verb (setq _verb __verb)) _verb)
  (:noun
   (&optional __noun)
   (if __noun (setq _noun __noun)) _noun)
  (:serialization-length
   ()
   (+
    ;; int32 _verb
    4
    ;; int32 _noun
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _verb
       (write-long _verb s)
     ;; int32 _noun
       (write-long _noun s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _verb
     (setq _verb (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _noun
     (setq _noun (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get voice_recognition_pkg::VerbNounPair :md5sum-) "3bdf7358f298eae1a5f20bdac9f65d0e")
(setf (get voice_recognition_pkg::VerbNounPair :datatype-) "voice_recognition_pkg/VerbNounPair")
(setf (get voice_recognition_pkg::VerbNounPair :definition-)
      "int32 verb
int32 noun
")



(provide :voice_recognition_pkg/VerbNounPair "3bdf7358f298eae1a5f20bdac9f65d0e")


