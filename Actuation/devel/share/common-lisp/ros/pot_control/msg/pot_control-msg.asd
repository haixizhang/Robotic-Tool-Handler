
(cl:in-package :asdf)

(defsystem "pot_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PotValue" :depends-on ("_package_PotValue"))
    (:file "_package_PotValue" :depends-on ("_package"))
    (:file "PotValues" :depends-on ("_package_PotValues"))
    (:file "_package_PotValues" :depends-on ("_package"))
  ))