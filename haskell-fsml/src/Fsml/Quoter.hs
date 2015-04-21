{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}

module Fsml.Quoter where

import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import Language.Haskell.TH.Quote

import Text.Parsec
import Text.Parsec.String (Parser)
import Text.Parsec.Language (emptyDef)

import qualified Text.Parsec.Expr as Expr
import qualified Text.Parsec.Token as Token

data Transition = Transition Input (Maybe Action) deriving (Eq, Show)
data Action = Action String deriving (Eq, Show)
data Input = Input String deriving (Eq, Show)

instance Lift Input where
  lift (Input name) = [| Input name |]

instance Lift Action where
  lift (Action name) = [| Action name |]

instance Lift Transition where
  lift (Transition input action) = [| Transition input action |]

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
  name <- identifier
  return $ Action name

transitionParser :: Parser Transition
transitionParser = do
  input <- inputParser
  _ <- string "->"
  action <- optionMaybe actionParser
  return $ Transition input action

contents :: Parser a -> Parser a
contents p = do
  Token.whiteSpace lexer
  r <- p
  eof
  return r

calcExpr :: String -> Q Exp
calcExpr str = do
  filename <- loc_filename `fmap` location
  case parse (contents transitionParser) filename str of
    Left err -> error (show err)
    Right tag -> [| tag |]

calc :: QuasiQuoter
calc = QuasiQuoter calcExpr err err err
  where err = error "Only defined for values"

