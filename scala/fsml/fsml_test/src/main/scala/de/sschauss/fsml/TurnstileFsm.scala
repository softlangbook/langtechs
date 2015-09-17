package de.sschauss.fsml

object TurnstileFsm extends App {

  val FSM: Fsm = fsm {
    def locked: State = initial state {
      "ticket" / "collect" -> unlocked
      "pass" / "alarm" -> exception
    }
    def unlocked: State = state {
      "ticket" / "eject"
      "pass" -> unlocked
    }
    def exception: State = state {
      "ticket" / "eject"
      "pass"
      "mute"
      "release" -> locked
    }
  }

}
