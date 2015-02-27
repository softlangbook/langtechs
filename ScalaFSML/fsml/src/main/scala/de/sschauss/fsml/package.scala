package de.sschauss

import scala.language.{postfixOps, implicitConversions}
import scala.language.experimental.macros
import scala.reflect.macros.whitebox

package object fsml {

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

  class State(i: Boolean, id: String, ts: => List[Transition]) {
    val initial = i
    lazy val transitions: List[Transition] = ts
  }

  class Transition(i: String, a: Option[String], t: => Option[State]) {
    val input = i
    val action = a
    lazy val to: Option[State] = t
    val -> : State => Transition = t => new Transition(i, a, Some(t))
    val / : String => Transition = a => new Transition(i, Some(a), t)
  }

  implicit val stringToTransition: String => Transition = id => new Transition(id, None, None)

  trait Fsm {

    val states: List[State]

  }

  def fsm(x: Unit): Fsm = macro fsmImpl


  def fsmImpl(c: whitebox.Context)(x: c.Tree): c.Tree = {
    import c.universe._
    val q"..${stateValues: List[Tree]}" = x
    val stateDefinitions = stateValues collect {
      case s: DefDef => s.symbol
    } map {
      s => reify(c.Expr[State](Ident(s)).splice).tree
    }
    val states = ValDef(Modifiers(Flag.LAZY | Flag.OVERRIDE), TermName("states"), TypeTree(typeOf[List[State]]), Apply(Select(reify(List).tree, TermName("apply")), stateDefinitions))
    q"""
      import de.sschauss.fsml
      new Fsm {
        ..$states
        ..${x.children}
      }
      """
  }


}
