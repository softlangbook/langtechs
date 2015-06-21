#lang racket
(require syntax/readerr)

(provide read read-syntax)

(define (read in)
  (syntax->datum (read-syntax #f in)))

(define (read-syntax src in)
  (skip-whitespace in)
  (read-fsml src in))

(define (skip-whitespace in)
  (regexp-match #px"^\\s*" in))

(define (read-fsml src in)
  (define-values (line col pos) (port-next-location in))
  (define (