#lang racket
(require
  syntax/readerr
  syntax/strip-context
  (prefix-in fsml:"../parser.rkt"))

(provide
 (rename-out
  [$-read read]
  [$-read-syntax read-syntax]))

(define ($-read in)
  (parameterize ([current-readtable (make-$-readtable)])
    (read in)))

#|
(define ($-read-syntax src in)
  (parameterize ([current-readtable (make-$-readtable)])
    (with-syntax ([states (read-syntax src in)])
      (strip-context
       #'(module fsml racket
           (provide (all-defined-out))
           states)))))|#

(define ($-read-syntax src in)
  (parameterize ([current-readtable (make-$-readtable)])
    (with-syntax ([fsm (read-syntax src in)])
      (strip-context
       #'(module fsml racket
           (provide (all-defined-out))
           fsm)))))

(define (make-$-readtable)
  (make-readtable (current-readtable)
                  #\$ 'terminating-macro read-dollar))
 
(define read-dollar
  (case-lambda
   [(ch in)
    (check-$-after (fsml:read in) in (object-name in))]
   [(ch in src line col pos)
    (check-$-after (fsml:read-syntax src in) in src)]))
 
(define (check-$-after val in src)
  (regexp-match #px"^\\s*" in) ; skip whitespace
  (let ([ch (peek-char in)])
    (unless (equal? ch #\$) (bad-ending ch src in))
    (read-char in))
  val)
 
(define (bad-ending ch src in)
  (let-values ([(line col pos) (port-next-location in)])
    ((if (eof-object? ch)
         raise-read-error
         raise-read-eof-error)
     "expected a closing `$'"
     src line col pos
     (if (eof-object? ch) 0 1))))