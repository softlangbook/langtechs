{-# LANGUAGE QuasiQuotes #-}

module Main where

import Prelude        hiding (id)
import Language.Fsml
import Language.Fsml.Runtime
import Data.Maybe

[fsml|
  turnstileFsm = initial state locked {
                     ticket / collect -> unlocked;
                     pass   / alarm   -> exception;
                   }
                   state unlocked {
                     ticket / eject;
                     pass -> locked;
                   }
                   state exception {
                     ticket / eject;
                     pass;
                     mute;
                     release -> locked;
                   }
|]

inputs :: [String]
inputs = ["ticket", "pass", "pass", "release"]

main :: IO ()
main = print (run turnstileFsm inputs)
