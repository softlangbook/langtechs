module Language.Fsml.Runtime where

import Data.List
import Data.Maybe
import Language.Fsml.CS

run :: Fsm -> [String] -> [String]
run f = runI f s'
    where
        s' = case find (\s -> initial s) (states f) of
            Nothing -> error "no initial state defined"
            Just a  -> a

runI :: Fsm -> State -> [String] -> [String]
runI _ _ []      = []
runI f s (i:is) = (maybeToList (action t')) ++ (runI f (maybe s Prelude.id (target t')) is)
    where
         t' = case find (\t -> input t == i) (transitions s) of
            Nothing -> error ("input" ++ i ++ "not defined in state " ++ Language.Fsml.CS.id s)
            Just a  -> a
