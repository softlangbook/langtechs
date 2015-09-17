package de.sschauss

import scala.language.experimental.macros
import scala.language.{implicitConversions, postfixOps}
import scala.reflect.macros.whitebox

package object fsml {

  sealed trait Node

  trait Fsm extends Node {
    val states: List[State]
  }

  class State(val initial: Boolean, val id: String, `transitions'`: => List[Transition]) extends Node {
    lazy val transitions: List[Transition] = `transitions'`

    // TODO: meaningful equals method
    override def equals(any: Any): Boolean = any match {
      case state: State => state.id == this.id
      case _ => false
    }
  }

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
        val id: Tree = q"${d.symbol.name.encodedName.toString}"
        internal.defDef(d.symbol, q"new de.sschauss.fsml.`package`.State($initial, $id, $transitions)")
      }

      val statesValDef: Tree = q"override lazy val states: List[de.sschauss.fsml.`package`.State] = List(..$stateIdents)"
      val fsmTree: Tree = q"""
      new de.sschauss.fsml.`package`.Fsm {
        ..$statesValDef
        ..$stateDefDefs
      }
      """
      val fsm: Fsm = c.eval[Fsm](c.Expr[Fsm](c.untypecheck(fsmTree)))
      val errors: List[String] = checkErrors(fsm)
      val warnings: List[String] = checkWarnings(fsm)
      errors foreach {
        c.error(c.enclosingPosition, _)
      }
      warnings foreach {
        c.warning(c.enclosingPosition, _)
      }
      fsmTree
    }
  }

  object state {
    val initial = false

    def apply(x: Transition): State = macro stateImpl
    def apply(x: Unit): State = macro stateImpl

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

  def checkErrors(fsm: Fsm): List[String] =
    List[Fsm => List[String]](checkSingleInitial, checkDeterministic) flatMap {
      _(fsm)
    }

  def checkSingleInitial(fsm: Fsm): List[String] =
    fsm.states count {
      _.initial
    } match {
      case 0 => List("no initial state defined")
      case 1 => List()
      case n => List("multiple initial states defined")
    }

  def checkDeterministic(fsm: Fsm): List[String] =
    fsm.states.flatMap {
      state => state.transitions groupBy {
        _.input
      } collect {
        case (input, transitions) if transitions.size > 1 => s"input $input already defined in state ${state.id}"
      }
    }

  def checkWarnings(fsm: Fsm): List[String] =
    List[Fsm => List[String]](checkReachable) flatMap {
      _(fsm)
    }

  def checkReachable(fsm: Fsm): List[String] =
    (fsm.states toSet) diff checkReachable(Set(), fsm.states filter {
      _.initial
    } toSet) map {
      s => s"unreachable state ${s.id}"
    } toList

  def checkReachable(visitedStates: Set[State], statesToVisit: Set[State]): Set[State] =
    statesToVisit toList match {
      case Nil => visitedStates
      case state :: states => checkReachable(visitedStates + state, ((state.transitions flatMap {
        _.target
      } toSet) union (states toSet)) diff (visitedStates + state))
    }


}
