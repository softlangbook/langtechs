{-# LANGUAGE QuasiQuotes #-}

module Main where

import           Fsml.Quoter
import           Fsml.Syntax

turnstileFsm :: Fsm
turnstileFsm = [fsm|
        initial state locked {
            input / action -> test;
            pass / alarm -> exception;
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
