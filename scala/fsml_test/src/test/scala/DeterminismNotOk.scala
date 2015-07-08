import de.sschauss.fsml._

object DeterminismNotOk {

  fsm {
    def stateA: State = initial state {
      "eventI" / "actionI" -> stateB
      "eventI" / "actionII" -> stateC
    }
    def stateB: State = state {}
    def stateC: State = state {}
  }

}


