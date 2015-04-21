{-# LANGUAGE QuasiQuotes     #-}
{-# LANGUAGE TemplateHaskell #-}

module Fsml.Quoter where

import           Language.Haskell.TH
import           Language.Haskell.TH.Quote

import           Prelude                   hiding (id)

import           Text.Parsec               hiding (State)
import           Text.Parsec.Language      (emptyDef)
import           Text.Parsec.String        (Parser)

import           Fsml.Syntax

import qualified Text.Parsec.Expr          ()
import qualified Text.Parsec.Token         as Token

lexer :: Token.TokenParser ()
lexer = Token.makeTokenParser emptyDef

identifier :: Parser String
identifier = Token.identifier lexer

inputParser :: Parser Input
inputParser = do
    name <- identifier
    return $ Input name

actionParser :: Parser Action
actionParser = do
    _ <- string "/"
    _ <- spaces
    name <- identifier
    return $ Action name

targetParser :: Parser Target
targetParser = do
    _ <- string "->"
    _ <- spaces
    name <- identifier
    return $ Target name

transitionParser :: Parser Transition
transitionParser = do
    input <- inputParser
    action <- optionMaybe actionParser
    target <- optionMaybe targetParser
    _ <- char ';'
    _ <- spaces
    return $ Transition input action target

initialParser :: Parser Initial
initialParser =
    (string "initial" >> (return $ Initial True))  <|>
    (string "" >> (return $ Initial False))

idParser :: Parser Id
idParser = do
    name <- identifier
    return $ Id name

stateParser :: Parser State
stateParser = do
    initial <- initialParser
    _ <- spaces
    _ <- string "state"
    _ <- spaces
    id <- idParser
    _ <- char '{'
    _ <- spaces
    transitions <- many transitionParser
    _ <- char '}'
    _ <- spaces
    return $ State initial id transitions

fsmParser :: Parser Fsm
fsmParser = do
    states <- many stateParser
    return $ Fsm states

contents :: Parser a -> Parser a
contents p = do
    Token.whiteSpace lexer
    r <- p
    eof
    return r

fsmExpr :: String -> Q Exp
fsmExpr str = do
    filename <- loc_filename `fmap` location
    case parse (contents fsmParser) filename str of
        Left err -> error (show err)
        Right tag -> [| tag |]

fsm :: QuasiQuoter
fsm = QuasiQuoter fsmExpr err err err
    where err = error "Only defined for values"

