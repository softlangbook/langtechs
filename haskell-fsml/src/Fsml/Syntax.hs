{-# LANGUAGE TemplateHaskell #-}

module Fsml.Syntax(
    Fsm(..),
    State(..),
    Transition(..),
    Initial(..),
    Id(..),
    Action(..),
    Input(..),
    Target(..)
) where


import           Language.Haskell.TH.Syntax

data Fsm = Fsm [State] deriving Show
data State = State Initial Id [Transition]  deriving Show
data Transition = Transition Input (Maybe Action) (Maybe Target) deriving Show
data Initial = Initial Bool deriving Show
data Id = Id String deriving Show
data Action = Action String deriving Show
data Input = Input String deriving Show
data Target = Target String deriving Show

instance Lift Fsm where
    lift (Fsm states) = [| Fsm states |]

instance Lift State where
    lift (State initial id transitions) = [| State initial id transitions |]

instance Lift Transition where
    lift (Transition input action target) = [| Transition input action target |]

instance Lift Initial where
    lift (Initial value) = [| Initial value |]

instance Lift Id where
    lift (Id value) = [| Id value |]

instance Lift Input where
    lift (Input value) = [| Input value |]

instance Lift Action where
    lift (Action value) = [| Action value |]

instance Lift Target where
    lift (Target value) = [| Target value |]
