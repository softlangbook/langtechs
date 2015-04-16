{-# LANGUAGE DeriveDataTypeable #-}

module Syntax where

import           Data.Generics
import           Text.ParserCombinators.Parsec hiding (State)

data Fsm = Fsm [Syntax.State] deriving (Show, Typeable, Data)
data State = State Bool String [Transition] deriving (Show, Typeable, Data)
data Transition = Transition String (Maybe String) (Maybe String) deriving (Show, Typeable, Data)


initialParser :: Parser Bool
initialParser = (string "initial" >> return True) <|> (string "" >> return False)

idParser :: Parser String
idParser = many (noneOf " ")

inputParser :: Parser String
inputParser = many (noneOf " ")

actionParser :: Parser String
actionParser = many (noneOf "")

targetParser :: Parser String
targetParser = many (noneOf " ")

transitionParser :: Parser Transition
transitionParser = do
    input <- inputParser
    action <- optionMaybe actionParser
    target <- optionMaybe targetParser
    _ <- char ';'
    return $ Transition input action target

stateParser :: Parser State
stateParser = do
    initial <- initialParser
    _ <- string "state"
    id <- idParser
    _ <- char '{'
    transitions <- many transitionParser
    _ <- char '}'
    return $ State initial id transitions

main :: IO()
main = case parse stateParser "state" "initial state locked {}" of
    Left err -> print $ show err
    Right t  -> print t