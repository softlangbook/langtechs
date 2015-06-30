import de.sschauss.fsml._

object ReachabilityNotOk {

  fsm {
    def stateA = initial state {
      "eventI" / "actionI" -> stateB
    }
    def stateB = state { }
    def stateC = state { }
  }

}
