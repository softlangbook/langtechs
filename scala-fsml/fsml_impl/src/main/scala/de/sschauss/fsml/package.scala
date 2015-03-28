package de.sschauss

import scala.language.experimental.macros
import scala.language.{implicitConversions, postfixOps}
import scala.reflect.macros.whitebox

package object fsml {

  implicit val stringToTransition: String => Transition = id => new Transition(id, None, None)

  def fsm(x: Unit): Fsm = macro fsmImpl

  def fsmImpl(c: whitebox.Context)(x: c.Tree): c.Tree = {
    import c.universe._
    val q"..${stateDefinitions: List[Tree]}" = x
    val stateSymbols = stateDefinitions collect {
      case s: DefDef => s.symbol
    } map {
      s => reify(c.Expr[State](Ident(s)).splice).tree
    }
    val states = ValDef(Modifiers(Flag.LAZY | Flag.OVERRIDE), TermName("states"), TypeTree(typeOf[List[State]]), Apply(Select(reify(List).tree, TermName("apply")), stateSymbols))
    val fsmTree: c.universe.Tree = q"""
      import de.sschauss.fsml
      new de.sschauss.fsml.`package`.Fsm {
        ..$states
        ..${x.children}
      }
      """
    // distinct ids and resolvable by design
    List(checkSingleInitial _, checkDeterministic _) foreach {
      _(c.eval[Fsm](c.Expr[Fsm](c.untypecheck(fsmTree))))
    }
    fsmTree
  }

  def checkDeterministic(fsm: Fsm): Unit = {
    fsm.states map {
      _.transitions map {
        _.input
      }
    } foreach { ts =>
      ts groupBy identity foreach {
        case (i, is) if is.size > 1 => throw new RuntimeException(s"nondeterministic input $i")
        case _ =>
      }
    }
  }

  def checkSingleInitial(fsm: Fsm): Unit = {
    fsm.states map {
      _.initial
    } count {
      _ == true
    } match {
      case 0 => throw new RuntimeException("no initial state defined")
      case 1 =>
      case n => throw new RuntimeException(s"$n initial states defined")
    }
  }

  trait Fsm {

    val states: List[State]

  }

  class State(i: Boolean, id: String, ts: => List[Transition]) {
    lazy val transitions: List[Transition] = ts
    val initial = i
  }

  class Transition(i: String, a: Option[String], t: => Option[State]) {
    lazy val to: Option[State] = t
    val input = i
    val action = a
    val -> : State => Transition = t => new Transition(i, a, Some(t))
    val / : String => Transition = a => new Transition(i, Some(a), t)
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
