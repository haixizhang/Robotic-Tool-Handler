
(cl:in-package :asdf)

(defsystem "motor_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MotorCommand" :depends-on ("_package_MotorCommand"))
    (:file "_package_MotorCommand" :depends-on ("_package"))
    (:file "MotorCommands" :depends-on ("_package_MotorCommands"))
    (:file "_package_MotorCommands" :depends-on ("_package"))
  ))