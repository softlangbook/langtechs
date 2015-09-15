module Fsml.Runtime where

data Fsm = Fsm { states :: [State]
               }

data State = State { initial     :: Bool
                   , id          :: String
                   , transitions :: [Transition] }

data Transition = Transition { input  :: String
                             , action :: Maybe String
                             , target :: Maybe State }
