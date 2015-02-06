package de.sschauss

package object fsml {

  type Name = String

  case class Fsm(states: List[State])

  case class State(id: Id, transitions: List[Transition])

  case class Transition(input: Input, action: Action, to: Id) {
    val -> : Id => Transition = to => Transition(input, action, to)
    val / : Action => Transition = action => Transition(input, action, to)
  }

  case class Action(name: Name)

  case class Id(name: Name)

  case class Input(name: Name)

  implicit def stringToTransition(id: String): Transition = Transition(id, "", "")

  implicit def stringToAction(id: String): Action = Action(id)

  implicit def stringToId(id: String): Id = Id(id)

  implicit def stringToInput(id: String): Input = Input(id)

}






