{-# LANGUAGE DeriveDataTypeable #-}

module Fsml.Syntax where

import           Data.Data

data Fsm = Fsm [State]
    deriving (Data, Show, Typeable)

data State = State Bool String [Transition]
           | AState String
    deriving (Data, Show, Typeable)

data Transition = Transition String (Maybe String) (Maybe State)
    deriving (Data, Show, Typeable)
