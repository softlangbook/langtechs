import de.sschauss.fsml._

object InitialNotOk1 {

  fsm {
    def stateA: State = initial state {
      "eventI" / "actionI" -> stateB
    }
    def stateB: State = state {
      "eventII" / "actionII" -> stateA
    }
  }

}
