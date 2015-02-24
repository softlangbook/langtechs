package de.sschauss

import scala.reflect.macros.whitebox
import scala.language.experimental.macros

/**
 * Created by simon on 24/02/15.
 */
package object fsml {


  type Name = String

  implicit def stringToFunction(x: String): (Transition) => (String, Transition) = (xs: Transition) => (x, xs)

  def state(x: Transition): State = macro stateImpl

  def stateImpl(c: whitebox.Context)(x: c.Tree) = {
    import c.universe._
    val q"..$stats" = x
    q"State($stats)"
  }


  case class Fsm(states: List[State])

  case class State(transitions: List[Transition])

  case class Transition(input: Input, action: Option[Action], to: Option[Id]) {
    val -> : Id => Transition = to => Transition(input, action, Some(to))
    val / : Action => Transition = action => Transition(input, Some(action), to)
  }

  case class Id(name: Name)

  case class Action(name: Name)

  case class Input(name: Name)

  implicit def stringToTransition(id: String): Transition = Transition(id, None, None)

  implicit def stringToAction(id: String): Action = Action(id)

  implicit def stringToId(id: String): Id = Id(id)

  implicit def stringToInput(id: String): Input = Input(id)

}
