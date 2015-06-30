import de.sschauss.fsml._

object ResolutionNotOk {

  fsm {
    def stateA = initial state {
      "eventI" / "actionI" -> stateB
      "eventII" / "actionII" -> stateC
    }
    def stateC = state { }
  }


}
