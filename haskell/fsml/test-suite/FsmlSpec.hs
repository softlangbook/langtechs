{-# LANGUAGE QuasiQuotes #-}

module FsmlSpec (spec) where

import Language.Fsml
import Language.Fsml.Ast
import Language.Fsml.CS
import Language.Fsml.Quoter
import Language.Fsml.Parser
import Test.Hspec
import Test.Hspec.QuickCheck

[fsml| test = initial state a {}|]

spec :: Spec
spec = do
    describe "husk" $ do
        it "returns the unit value" $ do
            test `shouldBe` test