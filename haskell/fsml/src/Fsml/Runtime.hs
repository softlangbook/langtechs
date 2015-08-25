{-# LANGUAGE DeriveDataTypeable #-}

module Fsml.Runtime where

import Data.Data
import Data.Typeable
import Prelude       hiding (id)

data Fsm = Fsm { states :: [State]
               } deriving (Data, Show, Typeable)

data State = State { initial     :: Bool
                   , id          :: String
                   , transitions :: [Transition] } deriving (Data, Show, Typeable)

data Transition = Transition { input  :: String
                             , action :: Maybe String
                             , target :: Maybe State } deriving (Data, Show, Typeable)
