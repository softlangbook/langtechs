#lang racket
(require (for-syntax racket/syntax))

(provide (all-defined-out))

(define-struct Fsm (states))
(define-struct State (initial id transitions))
(define-struct Transition (input action target))
(define-struct None())
(define-struct Just (a))

(define-syntax (initial stx)
  (syntax-case stx ()
    [(_ state id (transition ...))
     (with-syntax ([name (datum->syntax #'id (string->symbol (syntax->datum #'id)))])
       #'(define name (State #t id (list transition ...))))]))
    

(define-syntax (state stx)
  (syntax-case stx ()
    [(_ id (transition ...))
     (with-syntax ([name (datum->syntax #'id (string->symbol (syntax->datum #'id)))])
       #'(define name (State #f id (list transition ...))))]))

(define-syntax (transition stx)
  (syntax-case stx (-> /)
    [(_ input)
       #'(Transition input (None) (None))]
    [(_ input / action)
       #'(Transition input (Just action) (None))]
    [(_ input -> target)
       #'(Transition input (None) (Just target))]
    [(_ input / action -> target)
       #'(Transition input (Just action) (Just target))]))

(define-syntax (-> stx)
  (syntax-case stx ()
    [(_)
     '()]))

(define-syntax (/ stx)
  (syntax-case stx ()
    [(_)
     '()]))