#lang racket
(require "../parser.rkt")

(provide
 read
 read-syntax)

(define (read in)
  (read-syntax #f in))

(define (read-syntax src in)
  (syntax-case (parse-fsml in) ()
      [(state ...)
       #'(module fsml racket
           (require (planet sschauss/fsml/main))
           (provide (all-defined-out))
           state ...)]))
  