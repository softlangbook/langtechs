{-# LANGUAGE TemplateHaskell #-}

module Fsml.Quoter where

import Fsml.Ast
import Fsml.Parser               (fsm, topLevel)
import Fsml.Runtime
import Language.Haskell.TH
import Language.Haskell.TH.Quote
import Text.Parsec               (parse)

fsml :: QuasiQuoter
fsml = QuasiQuoter
    { quoteExp  = undefined
    , quotePat  = undefined
    , quoteType = undefined
    , quoteDec  = quoteFsmlDec
    }

quoteFsmlDec :: String -> Q [Dec]
quoteFsmlDec str = do
    filename <- loc_filename `fmap` location
    case parse (topLevel fsm) filename str of
        Left err  -> error (show err)
        Right ast -> return (toFsmDec ast)

toFsmDec :: FsmNode -> [Dec]
toFsmDec fsm@(FsmNode name states) = [ValD (VarP (mkName name)) (NormalB fsmExp) stateDecs]
    where
        fsmExp     = toFsmExp fsm
        stateDecs  = map toStateDec states

toFsmExp :: FsmNode -> Exp
toFsmExp (FsmNode _ states) = AppE (ConE 'Fsm) (ListE stateVarExps)
    where
        stateVarExps = map (\(StateNode _ id _) -> VarE (mkName id)) states

toStateDec :: StateNode -> Dec
toStateDec state@(StateNode _ id _) = ValD (VarP (mkName id)) (NormalB stateExp) []
    where
        stateExp = toStateExp state

toStateExp :: StateNode -> Exp
toStateExp (StateNode initial id transitions) = AppE (AppE (AppE (ConE 'State) (ConE 'True)) idExp) transitionExp
   where
       idExp = toStringExp id
       transitionExp = ListE (map toTransitionExp transitions)


toTransitionExp :: TransitionNode -> Exp
toTransitionExp (TransitionNode input action target) = AppE (AppE (AppE (ConE 'Transition) inputExp) actionExp) targetExp
    where
        inputExp  = toStringExp input
        actionExp = case action of
                        Nothing     -> ConE 'Nothing
                        Just string -> AppE (ConE 'Just) (toStringExp string)
        targetExp = case target of
                        Nothing     -> ConE 'Nothing
                        Just string -> AppE (ConE 'Just) (VarE (mkName string))

toStringExp :: String -> Exp
toStringExp string = LitE (StringL string)
