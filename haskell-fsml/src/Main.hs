{-# LANGUAGE QuasiQuotes #-}

module Main where

import           Fsml.Quoter
import           Fsml.Syntax

locked :: State
locked = [fsm|
        initial state locked {
            ticket / collect -> unlocked;
            pass / alarm -> exception;
        }
    |]
unlocked :: State
unlocked = [fsm|
        state unlocked {
            ticket / eject;
            pass -> locked;
        }
    |]
exception :: State
exception = [fsm|
        state exception {
            ticket / eject;
            pass;
            mute;
            release -> locked;
        }
    |]

main :: IO ()
main = print [locked, unlocked, exception]
