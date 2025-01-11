;;;; rnrs-compat.lisp

(cl:in-package "https://github.com/g000001/r7rs-compat#internals")


(define-syntax r7rs
  (syntax-rules ()
    ((r7rs)
     (cl:eval-when (:compile-toplevel :load-toplevel :execute) 
       (cl:in-package "https://github.com/g000001/r7rs-compat")
       (named-readtables:in-readtable :r7rs)))))


(define-syntax define-not-implemented
  (syntax-rules ()
    ((define-not-implemented name)
     (define (name . args)
       (error "not implemented:" 'name)))))


(define (current-second)
  (let ((tai (srfi-19:current-time 'srfi-19:time-tai)))
    (+ (srfi-19:time-second tai)
       (cl:float (/ (srfi-19:time-nanosecond tai)
                    (cl:load-time-value (expt 10d0 9)))
                 0d0))))


#|(cl:remove-duplicates
 (cl:loop :for s :being :the :external-symbols :of 'r7rs
          :unless (cl:fboundp s)
            :do (cl:pprint `(define-not-implemented ,s))))|#


(define-not-implemented binary-port?)


(define-not-implemented command-line)


(define-not-implemented current-jiffy)


(define-syntax define-values
  ;;FIXME
  #|(let ()
      (define-values (x y) (exact-integer-sqrt 17))
      (list x y))|#
  (syntax-rules ()
    ((_ (arg ***) form)
     (cl:setf (cl:values arg ***)
              form))))


(define (delete-file file-name)
  (cl:delete-file file-name))


(define (emergency-exit . obj)
  (let ((obj (car obj)))
    (or #+(or lispworks ccl) (cl-user::quit (car obj))
        #+(or sbcl allegro) (cl-user::exit (car obj))
        (error "not implemented:" 'name))))


(define-not-implemented environment)


(define (exit . obj)
  (let ((obj (car obj)))
    (or #+(or lispworks ccl) (cl-user::quit (car obj))
        #+(or sbcl allegro) (cl-user::exit (car obj))
        (error "not implemented:" 'name))))


(define (features)
  cl:*features*)


(define-not-implemented file-error?)


(define flush-output-port
  (case-lambda
   (() (cl:force-output (current-output-port)))
   ((port) (cl:force-output port))))


(define (include file-name)
  (cl:load file-name))


(define (include-ci file-name)
  (cl:load file-name))


(define-not-implemented input-port-open?)


(define-not-implemented jiffies-per-second)


(define-not-implemented open-binary-input-file)


(define-not-implemented open-binary-output-file)


(define-not-implemented output-port-open?)


(define-not-implemented syntax-error)


(define-not-implemented u8-ready?)


(define write-shared
  (case-lambda
   ((obj)
    (cl:write obj :circle cl:T :stream (current-output-port)))
   ((obj port)
    (cl:write obj :circle cl:T :stream port))))


(define write-simple
  (case-lambda
   ((obj)
    (cl:write obj :circle cl:nil :stream (current-output-port)))
   ((obj port)
    (cl:write obj :circle cl:nil :stream port))))


;;; *EOF*
