{-# LANGUAGE DeriveDataTypeable #-}

module Fsml.Syntax where

import           Data.Data

data State = State Bool String [Transition] deriving (Data, Show, Typeable)
data Transition = Transition String (Maybe String) (Maybe String) deriving (Data, Show, Typeable)
