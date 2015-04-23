module Fsml.Quoter where

import           Fsml.Parser               (state, topLevel)
import           Language.Haskell.TH
import           Language.Haskell.TH.Quote
import           Text.Parsec               (parse)

fsm :: QuasiQuoter
fsm = QuasiQuoter {
      quoteExp  = quoteStateExp
    , quotePat = undefined
    , quoteType = undefined
    , quoteDec = undefined
    }

quoteStateExp :: String -> Q Exp
quoteStateExp str = do
    filename <- loc_filename `fmap` location
    case parse (topLevel state) filename str of
        Left err  -> error (show err)
        Right tag -> dataToExpQ (const Nothing) tag
