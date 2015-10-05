#lang racket
(require
  (for-syntax racket/syntax)
  "ast.rkt")

(provide (all-defined-out))

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