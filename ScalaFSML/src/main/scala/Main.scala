import de.sschauss.fsml._

object Main extends App {


  val locked = initial state {
    "ticket" / "collect" -> "unlocked"
    "pass" / "alarm" -> "exception"
  }

  val unlocked = state {
    "ticket" / "eject"
    "pass" -> "locked"
  }

  val exception = state {
    "ticket" / "eject"
    "pass"
    "mute"
    "release" -> "locked"
  }

  List(locked, unlocked, exception) foreach println

}
