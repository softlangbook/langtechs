module Language.Fsml.Ast where

data FsmNode = FsmNode String [StateNode]
    deriving Show

data StateNode = StateNode Bool String [TransitionNode]
    deriving Show

data TransitionNode = TransitionNode String (Maybe String) (Maybe String)
    deriving Show
