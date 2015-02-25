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

  class State(i: Boolean, ts: => List[Transition]) {
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


  class Fsm(currentState: State, states: Set[State]) {

    def this(states: State*) = this(states find {
      _.initial
    } get, states toSet)

    def step(input: String): Fsm = currentState.transitions find {
      _.input == input
    } match {
      case Some(transition) =>
        println(s"input: $input")
        (transition.action, transition.to) match {
          case (None, None) => this
          case (None, Some(to)) => new Fsm(to, states)
          case (Some(action), None) =>
            println(action)
            this
          case (Some(action), Some(to)) =>
            println(action)
            new Fsm(to, states)
        }
      case None => throw new RuntimeException(s"Invalid input, doesn't match an ${currentState.transitions map {_.input}}")
    }

    def step(inputs: Seq[String]): Fsm = inputs match {
      case Nil => this
      case Seq(i, is@_*) => step(i).step(is)
    }

  }

}
