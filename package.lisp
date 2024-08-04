;;;; package.lisp

(cl:in-package :cl-user)


(defpackage "https://github.com/g000001/r7rs-compat"
  (:nicknames :r7rs)
  (:use :srfi-172 :srfi-46 :srfi-98 :srfi-9)
  (:export #:r7rs)
  (:import-from :rnrs-compat
   #:call-with-input-file
   #:call-with-output-file
   #:char-ready?
   #:current-input-port
   #:current-output-port
   #:define
   #:display
   #:eval
   #:exact->inexact
   #:inexact->exact
   #:interaction-environment
   #:load
   #:null-environment
   #:open-input-file
   #:open-output-file
   #:read
   #:scheme-report-environment
   #:with-input-from-file
   #:with-output-to-file
   #:write
   #:string->symbol)
  (:import-from :srfi-96
   #:file-exists?
   #:current-error-port)
  (:export
   #:*
   #:+
   #:-
   #:|...|
   #:/
   #:<
   #:<=
   #:=
   #:=>
   #:>
   #:>=
   #:abs
   #:acos
   #:and
   #:angle
   #:append
   #:apply
   #:asin
   #:assoc
   #:assq
   #:assv
   #:atan
   #:begin
   #:binary-port?
   #:boolean=?
   #:boolean?
   #:bytevector
   #:bytevector-append
   #:bytevector-copy
   #:bytevector-copy!
   #:bytevector-length
   #:bytevector-u8-ref
   #:bytevector-u8-set!
   #:bytevector?
   #:caaaar
   #:caaadr
   #:caaar
   #:caadar
   #:caaddr
   #:caadr
   #:caar
   #:cadaar
   #:cadadr
   #:cadar
   #:caddar
   #:cadddr
   #:caddr
   #:cadr
   #:call-with-current-continuation
   #:call-with-input-file
   #:call-with-output-file
   #:call-with-port
   #:call-with-values
   #:call/cc
   #:car
   #:case
   #:case-lambda
   #:cdaaar
   #:cdaadr
   #:cdaar
   #:cdadar
   #:cdaddr
   #:cdadr
   #:cdar
   #:cddaar
   #:cddadr
   #:cddar
   #:cdddar
   #:cddddr
   #:cdddr
   #:cddr
   #:cdr
   #:ceiling
   #:char->integer
   #:char-alphabetic?
   #:char-ci<=?
   #:char-ci<?
   #:char-ci=?
   #:char-ci>=?
   #:char-ci>?
   #:char-downcase
   #:char-foldcase
   #:char-lower-case?
   #:char-numeric?
   #:char-ready?
   #:char-upcase
   #:char-upper-case?
   #:char-whitespace?
   #:char<=?
   #:char<?
   #:char=?
   #:char>=?
   #:char>?
   #:char?
   #:close-input-port
   #:close-output-port
   #:close-port
   #:command-line
   #:complex?
   #:cond
   #:cond-expand
   #:cons
   #:cos
   #:current-error-port
   #:current-input-port
   #:current-jiffy
   #:current-output-port
   #:current-second
   #:define
   #:define-record-type
   #:define-syntax
   #:define-values
   #:delay
   #:delay-force
   #:delete-file
   #:denominator
   #:digit-value
   #:display
   #:do
   #:dynamic-wind
   #:else
   #:emergency-exit
   #:environment
   #:eof-object
   #:eof-object?
   #:eq?
   #:equal?
   #:eqv?
   #:error
   #:error-object-irritants
   #:error-object-message
   #:error-object?
   #:eval
   #:even?
   #:exact
   #:exact->inexact
   #:exact-integer-sqrt
   #:exact-integer?
   #:exact?
   #:exit
   #:exp
   #:expt
   #:features
   #:file-error?
   #:file-exists?
   #:finite?
   #:floor
   #:floor-quotient
   #:floor-remainder
   #:floor/
   #:flush-output-port
   #:for-each
   #:force
   #:gcd
   #:get-environment-variable
   #:get-environment-variables
   #:get-output-bytevector
   #:get-output-string
   #:guard
   #:if
   #:imag-part
   #:include
   #:include-ci
   #:inexact
   #:inexact->exact
   #:inexact?
   #:infinite?
   #:input-port-open?
   #:input-port?
   #:integer->char
   #:integer?
   #:interaction-environment
   #:jiffies-per-second
   #:lambda
   #:lcm
   #:length
   #:let
   #:let*
   #:let*-values
   #:let-syntax
   #:let-values
   #:letrec
   #:letrec*
   #:letrec-syntax
   #:list
   #:list->string
   #:list->vector
   #:list-copy
   #:list-ref
   #:list-set!
   #:list-tail
   #:list?
   #:load
   #:log
   #:magnitude
   #:make-bytevector
   #:make-list
   #:make-parameter
   #:make-polar
   #:make-promise
   #:make-rectangular
   #:make-string
   #:make-vector
   #:map
   #:max
   #:member
   #:memq
   #:memv
   #:min
   #:modulo
   #:nan?
   #:negative?
   #:newline
   #:not
   #:null-environment
   #:null?
   #:number->string
   #:number?
   #:numerator
   #:odd?
   #:open-binary-input-file
   #:open-binary-output-file
   #:open-input-bytevector
   #:open-input-file
   #:open-input-string
   #:open-output-bytevector
   #:open-output-file
   #:open-output-string
   #:or
   #:output-port-open?
   #:output-port?
   #:pair?
   #:parameterize
   #:peek-char
   #:peek-u8
   #:port?
   #:positive?
   #:procedure?
   #:promise?
   #:quasiquote
   #:quote
   #:quotient
   #:raise
   #:raise-continuable
   #:rational?
   #:rationalize
   #:read
   #:read-bytevector
   #:read-bytevector!
   #:read-char
   #:read-error?
   #:read-line
   #:read-string
   #:read-u8
   #:real-part
   #:real?
   #:remainder
   #:reverse
   #:round
   #:scheme-report-environment
   #:set!
   #:set-car!
   #:set-cdr!
   #:sin
   #:sqrt
   #:square
   #:string
   #:string->list
   #:string->number
   #:string->symbol
   #:string->utf8
   #:string->vector
   #:string-append
   #:string-ci<=?
   #:string-ci<?
   #:string-ci=?
   #:string-ci>=?
   #:string-ci>?
   #:string-copy
   #:string-copy!
   #:string-downcase
   #:string-fill!
   #:string-foldcase
   #:string-for-each
   #:string-length
   #:string-map
   #:string-ref
   #:string-set!
   #:string-upcase
   #:string<=?
   #:string<?
   #:string=?
   #:string>=?
   #:string>?
   #:string?
   #:substring
   #:symbol->string
   #:symbol=?
   #:symbol?
   #:syntax-error
   #:syntax-rules
   #:tan
   #:textual-port?
   #:truncate
   #:truncate-quotient
   #:truncate-remainder
   #:truncate/
   #:u8-ready?
   #:unless
   #:unquote
   #:unquote-splicing
   #:utf8->string
   #:values
   #:vector
   #:vector->list
   #:vector->string
   #:vector-append
   #:vector-copy
   #:vector-copy!
   #:vector-fill!
   #:vector-for-each
   #:vector-length
   #:vector-map
   #:vector-ref
   #:vector-set!
   #:vector?
   #:when
   #:with-exception-handler
   #:with-input-from-file
   #:with-output-to-file
   #:write
   #:write-bytevector
   #:write-char
   #:write-shared
   #:write-simple
   #:write-string
   #:write-u8
   #:zero?
   #:_))


(defpackage "https://github.com/g000001/r7rs-compat#internals"
  (:use "https://github.com/g000001/r7rs-compat"))


;;; *EOF*
