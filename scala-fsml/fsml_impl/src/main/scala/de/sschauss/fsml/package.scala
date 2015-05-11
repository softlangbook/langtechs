package de.sschauss

import scala.language.experimental.macros
import scala.language.{implicitConversions, postfixOps}
import scala.reflect.macros.whitebox

package object fsml {

  sealed trait Node

  trait Fsm extends Node {
    val states: List[State]
  }

  class State(val initial: Boolean, val id: String, transitions: List[Transition]) extends Node

  class Transition(val input: String, val action: Option[String], `target'`: => Option[State]) extends Node {
    lazy val target: Option[State] = `target'`
  }

  implicit def stringToTransition(id: String): Transition = new Transition(id, None, None)

  implicit def transitionHelperToTransition(transition: Transition): TransitionHelper =
    new TransitionHelper(transition.input, transition.action, transition.target)

  implicit def stringToTransitionHelper(id: String): TransitionHelper = new TransitionHelper(id, None, None)

  class TransitionHelper(input: String, action: Option[String], target: Option[State]) {
    def /(action: String): Transition = new Transition(input, Some(action), target)

    def ->(target: State): Transition = new Transition(input, action, Some(target))
  }

  object fsm {
    def apply(x: Unit): Fsm = macro fsmImpl

    def fsmImpl(c: whitebox.Context)(x: c.Tree): c.Tree = {
      import c.universe._
      val q"..${stateDefinitions: List[Tree]}" = x
      val stateSymbols: List[DefDef] = stateDefinitions collect {
        case s: DefDef => s
      }
      val stateIdents = stateSymbols map {
        s => reify(c.Expr[State](Ident(s.symbol)).splice).tree
      }

      val stateDefDefs: List[DefDef] = stateSymbols map { d =>
        val q"new de.sschauss.fsml.`package`.State($initial, $_, $transitions)" = d.rhs
        val id = q"${d.symbol.name.encodedName.toString}"
        internal.defDef(d.symbol, q"new de.sschauss.fsml.`package`.State($initial, $id, $transitions)")
      }

      val statesValDef = q"override lazy val states: List[de.sschauss.fsml.`package`.State] = List(..$stateIdents)"
      q"""
      new de.sschauss.fsml.`package`.Fsm {
        ..$statesValDef
        ..$stateDefDefs
      }
      """
    }
  }

  object state {
    val initial = false

    def apply(x: Transition): State = macro stateImpl

    def stateImpl(c: whitebox.Context)(x: c.Tree): c.Tree = {
      import c.universe._
      val q"..${transitions: List[Tree]}" = x
      q"""new State($initial, "", $transitions)"""
    }
  }


  object initial {
    val initial = true

    def state(x: Transition): State = macro stateImpl

    def stateImpl(c: whitebox.Context)(x: c.Tree): c.Tree = {
      import c.universe._
      val q"..${transitions: List[Tree]}" = x
      q"""new State($initial, "", $transitions)"""
    }
  }

}
