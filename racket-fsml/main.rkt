#lang racket
(require (for-syntax racket/syntax))

(provide
 true
 list
 false
 (all-defined-out)
 (rename-out [fsml-module-begin #%module-begin]))

(define-struct Fsm (states))
(define-struct State (initial id transitions))
(define-struct Transition (input action target))
(define-struct None())
(define-struct Just (a))

(define-syntax-rule (fsml-module-begin body ...)
  (#%plain-module-begin
   body ...))

(define-syntax (state stx)
  (syntax-case stx ()
    [(_ id initial transition ...)
     (with-syntax ([name (format-id stx "~a" #'id)])
       #`(define name (State initial (symbol->string 'id) (list transition ...))))]))

(define-syntax (transition stx)
  (syntax-case stx (-> /)
    [(_ input)
     (with-syntax ([name (format-id stx "~a" #'target)])
       #`(Transition (symbol->string 'input) (None) (None)))]
    [(_ input / action)
     (with-syntax ([name (format-id stx "~a" #'target)])
       #`(Transition (symbol->string 'input) (Just (symbol->string 'action)) (None)))]
    [(_ input -> target)
     (with-syntax ([name (format-id stx "~a" #'target)])
       #`(Transition (symbol->string 'input) (None) (Just (symbol->string 'target))))]
    [(_ input / action -> target)
     (with-syntax ([name (format-id stx "~a" #'target)])
       #`(Transition (symbol->string 'input) (Just (symbol->string 'action)) (Just (symbol->string 'target))))]))

(define-syntax (-> stx)
  (syntax-case stx ()
    [(_)
     #`id]))

(define-syntax (/ stx)
  (syntax-case stx ()
    [(_)
     #`id]))

(state locked true 
                    (transition ticket / collect -> unlocked)
                    (transition pass / alarm -> exception))
(state unlocked false 
                       (transition ticket / eject)
                       (transition pass -> locked))

(state exception false
      (transition ticket / eject)
      (transition pass)
      (transition mute)
      (transition release -> locked))

(Just-a (Transition-target (first (State-transitions locked))))