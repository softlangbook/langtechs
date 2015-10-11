import de.sschauss.fsml.macros._

object Test extends App {
  @Fsm
  object Test {
    def locked: State = initial state {
      "ticket" / "collect" -> unlocked
      "pass" / "alarm" -> exception
    }
    def unlocked = state {
      "ticket" / "eject"
      "pass" -> locked
    }
    def exception = state {
      "ticket" / "eject"
      "pass"
      "mute"
      "release" -> locked
    }
  }

  Test.states().ticket.ticket.pass.pass.ticket.mute.release

}
