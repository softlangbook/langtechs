module Fsml.Quoter where

import           Data.Generics
import           Data.List                 (nub)
import           Fsml.Parser               (state, topLevel)
import           Fsml.Syntax
import           Language.Haskell.TH
import           Language.Haskell.TH.Quote
import           Text.Parsec               (parse)

fsml :: QuasiQuoter
fsml = QuasiQuoter
    { quoteExp  = quoteStateExp
    , quotePat  = undefined
    , quoteType = undefined
    , quoteDec  = undefined
    }

quoteStateExp :: String -> Q Exp
quoteStateExp str = do
    filename <- loc_filename `fmap` location
    case parse (topLevel state) filename str of
        Left err  -> error (show err)
        Right tag -> dataToExpQ (const Nothing `extQ` antiStateExp) tag

antiStateExp :: State -> Maybe ExpQ
antiStateExp (AState name) = Just $ varE $ mkName name
antiStateExp (State _ _ transitions)
    | checkDeterministic transitions [] = Nothing
    | otherwise                         = error "non deterministic input"

checkDeterministic :: [Transition] -> [String] -> Bool
checkDeterministic [] inputs = length (nub inputs) == length inputs
checkDeterministic (Transition input _ _:transitions) inputs = checkDeterministic transitions (input:inputs)
