;;; -*- mode: Lisp; coding: utf-8  -*-

(cl:in-package cl-user)


(named-readtables:defreadtable :r7rs
  (:merge :rnrs)
  (:macro-char #\" #'r6rs-reader:read-r6rs-string)
  (:dispatch-macro-char #\# #\; #'srfi-62:s-expression-comments)
  (:case :upcase))


;;; *EOF*
