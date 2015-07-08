{-# LANGUAGE QuasiQuotes #-}

module Main where

import           Fsml.Quoter
import           Fsml.Syntax

{-
    Done:
        - resolvable
        - deterministic
    Todo:
        - single initial
        - reachable
        - distinct ids
-}

locked :: State
locked = [fsml|
        initial state locked {
            ticket / collect -> unlocked;
            pass / alarm -> exception;
        }
    |]
unlocked :: State
unlocked = [fsml|
        state unlocked {
            ticket / eject;
            pass -> locked;
        }
    |]
exception :: State
exception = [fsml|
        state exception {
            ticket / eject;
            pass;
            mute;
            release -> locked;
        }
    |]



turnstileFsm :: Fsm
turnstileFsm = Fsm [locked, unlocked, exception]

main :: IO ()
main = print turnstileFsm