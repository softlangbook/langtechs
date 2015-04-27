#lang racket
(require parser-tools/lex)
(require (prefix-in : parser-tools/lex-sre))

(define fsml-lexer
  (lexer
   ["initial"
    (cons `(INITIAL)
           (fsml-lexer input-port))]
   ["state"
    (cons `(STATE)
          (fsml-lexer input-port))]
   ["{"
    (cons `(LBRACE)
          (fsml-lexer input-port))]
   ["}"
    (cons `(RBRACE)
          (fsml-lexer input-port))]
   ["->"
    (cons `(ARROW)
          (fsml-lexer input-port))]
   ["/"
    (cons `(SLASH)
          (fsml-lexer input-port))]
   [";"
    (cons `(SEMI)
          (fsml-lexer input-port))]
   [(:& (:+ alphabetic) (complement (:or "initial" "state")))
    (cons `(STRING ,(string->symbol lexeme))
          (fsml-lexer input-port))]
   [whitespace 
    (fsml-lexer input-port)]
   
   [(eof)
    '()]))

(define turnstile-fsm
  "
    initial state locked {
      ticket / collect -> unlocked;
    }
    state unlocked {
      ticket / eject;
    }
  ")
 
(define test
  (fsml-lexer (open-input-string turnstile-fsm)))

#|
(struct None())
(struct (a) Just ([a : a]))

(define-type (Maybe a) (U None (Just a)))

(struct Fsm ([states : (Listof State)]))
(struct State ([initial : Boolean] [id : String] [transitions : (Listof Transition)]))
(struct Transition ([input : String] [action : (Maybe String)] [target : State]))
|#