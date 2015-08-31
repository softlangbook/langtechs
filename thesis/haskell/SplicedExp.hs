{-# LANGUAGE TemplateHaskell #-}
module SplicedExp where

import QuotedExp

splicedExp :: Num a => (a, [a])
splicedExp = $quotedExp
