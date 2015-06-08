#lang typed/racket

(provide (all-defined-out))

; Helper

(struct None())
(struct (a) Just ([a : a]))
(define-type (Maybe a) (U None (Just a)))

; AST

(struct: Fsm ([states : (Listof State)]))

(struct: State ([initial : Boolean] [transitions : (Listof Transition)]))

(struct: Transition ([input : Input] [action : (Maybe Action)] [target : (Maybe Target)]))
                          
(struct: Input ([value : String]))
(struct: Action ([value : String]))
(struct: Target ([value : String]))