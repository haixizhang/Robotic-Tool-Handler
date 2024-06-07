
(cl:in-package :asdf)

(defsystem "voice_recognition_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VerbNounPair" :depends-on ("_package_VerbNounPair"))
    (:file "_package_VerbNounPair" :depends-on ("_package"))
  ))