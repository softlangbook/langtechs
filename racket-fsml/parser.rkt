#lang racket
(require parser-tools/lex
         (prefix-in re- parser-tools/lex-sre)
         parser-tools/yacc
         "main.rkt"
         "semantics.rkt")
(provide (all-defined-out))
 
(define-tokens fsml-tokens (STRING LIST))
(define-empty-tokens fsml-empty-tokens (EOF STATE INITIAL LBRACE RBRACE SEMI TO TRIGGER))
 
(define fsml-lexer
  (lexer
   ("initial" (token-INITIAL))
   ("state" (token-STATE))
   ("{" (token-LBRACE))
   ("}" (token-RBRACE))
   (";" (token-SEMI))
   ("->" (token-TO))
   ("/" (token-TRIGGER))
   (string (token-STRING lexeme))
   (whitespace (fsml-lexer input-port))
   ((eof) (token-EOF))))

(define-lex-abbrevs
  (string-characters (char-range "A" "z"))
  (string (re-+ string-characters)))



(define fsml-parser
  (parser
   (start parse-fsm)
   (end EOF)
   (error void)
   (tokens fsml-tokens fsml-empty-tokens)
   (precs (left))
   (grammar
    (parse-fsm ((parse-listof-states) (Fsm $1)))
    (parse-listof-states
     ((parse-state) (list $1))
     ((parse-listof-states parse-state) (append $1 (list $2))))
    (parse-state 
     ((INITIAL STATE STRING LBRACE parse-listof-transition RBRACE) (State #t $3 $5))
     ((STATE STRING LBRACE parse-listof-transition RBRACE) (State #f $2 $4)))
    (parse-transition
     ((STRING SEMI) (Transition $1 (None) (None)))
     ((STRING TRIGGER STRING SEMI) (Transition $1 (Just $3) (None)))
     ((STRING TO STRING SEMI) (Transition $1 (None) (Just $3)))
     ((STRING TRIGGER STRING TO STRING SEMI) (Transition $1 (Just $3) (Just $5))))
    (parse-listof-transition
     ((parse-transition) (list $1))
     ((parse-listof-transition parse-transition) (append $1 (list $2)))))))

(define (lex-this lexer input) (lambda () (lexer input)))
(define (parse input)
  (fsml-parser (lex-this fsml-lexer (open-input-string input))))