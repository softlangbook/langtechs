package de.sschauss

import scala.language.experimental.macros
import scala.language.{implicitConversions, postfixOps}
import scala.reflect.macros.whitebox

package object fsml {

  implicit val stringToTransition: String => TransitionHelper = id => new TransitionHelper(id, None, None)
  implicit val transitionHelperToTransition: Transition => TransitionHelper = transition => new TransitionHelper(transition.input, transition.action, transition.target)

  class TransitionHelper(input: String, action: Option[String], target: Option[State]) {
    val / : String => Transition = a => new Transition(input, Some(a), target)
    val -> : State => Transition = t => new Transition(input, action, Some(t))
  }


  trait Fsm {
    val states: List[State]
  }

  class State(val initial: Boolean, val id: String, transitions: List[Transition])

  class Transition(val input: String, val action: Option[String], `companion target`: => Option[State]) {
    lazy val target: Option[State] = `companion target`
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
