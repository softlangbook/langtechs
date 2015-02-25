import de.sschauss.fsml._

object Main extends App {


  val locked: State = initial state {
    "ticket" / "collect" -> unlocked
    "pass" / "alarm" -> exception
  }

  val unlocked: State = state {
    "ticket" / "eject"
    "pass" -> locked
  }

  val exception: State = state {
    "ticket" / "eject"
    "pass"
    "mute"
    "release" -> locked
  }

}
