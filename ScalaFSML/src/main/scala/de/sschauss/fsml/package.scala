package de.sschauss

package object fsml {

  type Name = String

  case class Fsm(states: List[State])

  case class State(id: Id, transitions: List[Transition])

  case class Transition(input: Input, action: Option[Action], to: Option[Id]) {
    val -> : Id => Transition = to => Transition(input, action, Some(to))
    val / : Action => Transition = action => Transition(input, Some(action), to)
  }

  case class Action(name: Name)

  case class Id(name: Name)

  case class Input(name: Name)

  implicit def stringToTransition(id: String): Transition = Transition(id, None, None)

  implicit def stringToAction(id: String): Action = Action(id)

  implicit def stringToId(id: String): Id = Id(id)

  implicit def stringToInput(id: String): Input = Input(id)

}






