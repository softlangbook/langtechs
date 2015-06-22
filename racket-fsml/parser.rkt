#lang racket
(require
  parser-tools/yacc
  parser-tools/lex
  (prefix-in : parser-tools/lex-sre)
  "main.rkt")

(provide
 (rename-out
  [fsml-read read]
  [fsml-read-syntax read-syntax]))

(define (fsml-read in)
  (syntax->datum (read-syntax #f in)))
(define (fsml-read-syntax src in)
  (parse-fsml in))

(define-tokens fsml-tokens (STRING))
(define-empty-tokens fsml-empty-tokens (INITIAL STATE LBRACE RBRACE SEMI SLASH ARROW EOF))
(define fsml-lexer
  (lexer-src-pos
   ("initial" (token-INITIAL))
   ("state" (token-STATE))
   ("{" (token-LBRACE))
   ("}" (token-RBRACE))
   (";" (token-SEMI))
   ("/" (token-SLASH))
   ("->" (token-ARROW))
   ((:+ alphabetic) (token-STRING lexeme))
   ((eof) (token-EOF))
   (whitespace (return-without-pos (fsml-lexer input-port)))))

(define fsml-parser
  (parser
   (tokens fsml-tokens fsml-empty-tokens)
   (start parse-state)
   (end EOF)
   (error
    (lambda (tok-ok? tok-name tok-value start-pos end-pos)
      (error (~a "unexpected token " tok-name " at " start-pos " " end-pos))))
   (src-pos)
   (grammar
    (parse-state
     ((INITIAL STATE STRING LBRACE parse-transition-list RBRACE) (id `(initial state ,$3 ,$5)))
     ((STATE STRING LBRACE parse-transition-list RBRACE) (State $2 $4)))
    (parse-transition-list
     ((parse-transition) (list $1))
     ((parse-transition parse-transition-list) (list* $1 $2)))
    (parse-transition
     ((STRING SEMI) (transition $1))
     ((STRING SLASH STRING SEMI) (transition $1 / $3))
     ((STRING ARROW STRING SEMI) (transition $1 -> $3))
     ((STRING SLASH STRING ARROW STRING SEMI) (transition $1 / $3 -> $5))))))

(define id (λ (x) x))

(define (lex-fsml lexer input) (λ () (lexer input)))

(define (parse-fsml input)
  (fsml-parser (lex-fsml fsml-lexer input)))

(parse-fsml (open-input-string "initial state locked { ticket / collect -> unlocked; }" ))



