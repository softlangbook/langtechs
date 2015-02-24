import de.sschauss.fsml._

/**
 * Created by simon on 24/02/15.
 */
object Main extends App {

  val locked = state {
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
