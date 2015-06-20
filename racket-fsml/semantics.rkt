#lang racket
(require 
  (for-syntax racket/syntax)
  "main.rkt")

(provide (all-defined-out))

(define-syntax (make-state stx)
    (syntax-case stx ()
      [(_ (State id initial transitions))
       (with-syntax ([name (format-id stx "~a" #'id)])
         ;(datum->syntax #'id (string->symbol (syntax->datum #'id)))
         #`(define name (State initial (symbol->string 'id) transitions)))]))