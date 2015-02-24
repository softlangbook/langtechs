package de.sschauss

import scala.language.implicitConversions
import scala.language.experimental.macros
import scala.reflect.macros.whitebox

package object fsml {

  type Name = String

  object state {
    val initial = false

    def apply(x: Transition): State = macro stateImpl

    def stateImpl(c: whitebox.Context)(x: c.Tree) : c.universe.Tree = {
      import c.universe._
      val q"..$stats" = x
      q"""State("id",$initial, $stats)"""
    }
  }

  object initial {
    val initial = true

    def state(x: Transition): State = macro stateImpl

    def stateImpl(c: whitebox.Context)(x: c.Tree) : c.universe.Tree = {
      import c.universe._
      val q"..$stats" = x
      q"""State("id",$initial, $stats)"""
    }
  }

  case class Fsm(states: List[State])

  case class State(id: String, initial: Boolean, transitions: List[Transition]) {
  }

  case class Transition(input: String, action: Option[String], to: Option[String]) {
    lazy val -> : String => Transition = to => Transition(input, action, Some(to))
    lazy val / : String => Transition = action => Transition(input, Some(action), to)
  }

  implicit def stringToTransition(id: String): Transition = Transition(id, None, None)

}
