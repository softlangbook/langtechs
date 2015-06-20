#lang racket
(provide (all-defined-out))

(define-struct Fsm (states))
(define-struct State (initial id transitions))
(define-struct Transition (input action target))
(define-struct None())
(define-struct Just (a))