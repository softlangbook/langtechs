{-# LANGUAGE QuasiQuotes #-}

module Main where

import Prelude        hiding (id)
import Fsml.Quoter
import Fsml.Runtime
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

main :: IO ()
main = print turnstileFsm
