;;;; rnrs-compat.asd

(cl:in-package :asdf)


(defsystem :r7rs-compat
  :serial t
  :depends-on (:srfi-172 :srfi-98 :srfi-96 :rnrs-compat :srfi-9 :srfi-19)
  :components ((:file "package")
               (:file "r7rs-compat")))


;;; *EOF*
