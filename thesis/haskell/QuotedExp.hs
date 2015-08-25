{-# LANGUAGE TemplateHaskell #-}
module QuotedExp where

import Language.Haskell.TH

quotedExp :: ExpQ
quotedExp = [| (1, [2, 3]) |]
