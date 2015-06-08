#lang racket
(require "syntax.rkt")

(define locked (State 
                true 
                (list 
                 (Transition (Input "ticket") (Just (Action "collect")) (Just (Target "unlocked")))
                 (Transition (Input "pass") (Just (Action "alarm")) (Just (Target "exception"))))))

(define unlocked (State
                  false
                  (list
                   (Transition (Input "ticket") (Just (Action "eject")) (None))
                   (Transition (Input "pass") (None) (Just (Target "locked"))))))

(define exception (State
                   false
                   (list
                    (Transition (Input "ticket") (Just (Action "eject")) (None))
                    (Transition (Input "pass") (None) (None))
                    (Transition (Input "mute") (None) (None))
                    (Transition (Input "release") (None) (Just (Target "locked"))))))