package de.sschauss

import scala.language.implicitConversions
import scala.language.experimental.macros
import scala.reflect.macros.whitebox

package object fsml {

  object state {
    val initial = false

    def apply(x: Transition): State = macro stateImpl

    def stateImpl(c: whitebox.Context)(x: c.Tree): c.universe.Tree = {
      import c.universe._
      val q"..$transitions" = x
      q"""new State($initial, $transitions)"""
    }
  }

  object initial {
    val initial = true

    def state(x: Transition): State = macro stateImpl

    def stateImpl(c: whitebox.Context)(x: c.Tree): c.universe.Tree = {
      import c.universe._
      val q"..$transitions" = x
      q"""new State($initial, $transitions)"""
    }
  }

  class State(initial: Boolean, ts: => List[Transition]) {
    lazy val transitions: List[Transition] = ts
  }

  class Transition(input: String, action: Option[String], t: => Option[State]) {
    lazy val to: Option[State] = t
    val -> : State => Transition = to => new Transition(input, action, Some(to))
    val / : String => Transition = action => new Transition(input, Some(action), to)
  }

  implicit val stringToTransition: String => Transition = id => new Transition(id, None, None)

}
