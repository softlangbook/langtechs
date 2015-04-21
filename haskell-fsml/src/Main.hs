{-# LANGUAGE QuasiQuotes #-}

module Main where

import Fsml.Quoter

turnstileFsm :: Transition
turnstileFsm = [calc|input->action|]

main :: IO ()
main = print turnstileFsm