{-# LANGUAGE TemplateHaskell #-}
module Test where

import Language.Haskell.TH
import QuoteExp

result :: Show a => ([Char], a) -> IO ()
result (s, a) = print (s ++ ": " ++ (show a))

main :: IO ()
main = mapM_ result [("quoteExp", $(quoteExp)),
                     ("quoteTypedExp", $$(quoteTypedExp))]
