import de.sschauss.fsml._

object IdsNotOk {

  fsm {
    def stateA: State = initial state {
      "eventI" / "actionI" -> stateZ
    }
    def stateA: State = state {
      "eventII" / "actionII" -> stateZ
    }
    def stateZ: State = state { }
  }

}
