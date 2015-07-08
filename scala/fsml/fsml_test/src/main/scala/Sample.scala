import de.sschauss.fsml._

object Sample extends App {

  val turnstileFsm: Fsm = fsm {
    def locked: State = initial state {
      "ticket" / "collect" -> unlocked
      "pass" / "alarm" -> exception
    }
    def unlocked: State = state {
      "ticket" / "eject"
      "pass" -> locked
    }
    def exception: State = state {
      "ticket" / "eject"
      "pass"
      "mute"
      "release" -> locked
    }
  }

}