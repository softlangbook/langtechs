import org.scalatest.WordSpec

class FsmlTest extends WordSpec {

  "A FSM" when {
    "defined with indeterministic inputs" should {
      "not compile" in {
        assertDoesNotCompile(
          """
            |import de.sschauss.fsml._
            |
            |object DeterminismNotOk {
            |
            |  fsm {
            |    def stateA: State = initial state {
            |      "eventI" / "actionI" -> stateB
            |      "eventI" / "actionII" -> stateC
            |    }
            |    def stateB: State = state {}
            |    def stateC: State = state {}
            |  }
            |
            |}
          """.stripMargin
        )
      }
    }
    "defined with zero initial states" should {
      "not compile" in {
        assertDoesNotCompile(
          """
            |import de.sschauss.fsml._
            |
            |object InitialNotOk1 {
            |
            |  fsm {
            |    def stateA: State = state {
            |      "eventI" / "actionI" -> stateB
            |    }
            |    def stateB: State = state {
            |      "eventII" / "actionII" -> stateA
            |    }
            |  }
            |
            |}
          """.stripMargin
        )
      }
    }
    "defined with multiple initial states" should {
      "not compile" in {
        assertDoesNotCompile(
          """
            |import de.sschauss.fsml._
            |
            |object InitialNotOk2 {
            |
            |  fsm {
            |    def stateA: State = initial state{
            |      "eventI" / "actionI" -> stateC
            |    }
            |    def stateB: State = initial state  {
            |      "eventI" / "actionII" -> stateC
            |    }
            |    def stateC: State = state { }
            |  }
            |
            |}
          """.stripMargin
        )
      }
    }
    "defined with unreachable states" should {
      "not compile" in {
        assertDoesNotCompile(
          """
            |import de.sschauss.fsml._
            |
            |object InitialNotOk1 {
            |
            |  fsm {
            |    def stateA: State = state {
            |      "eventI" / "actionI" -> stateB
            |    }
            |    def stateB: State = state {
            |      "eventII" / "actionII" -> stateA
            |    }
            |  }
            |
            |}
          """.stripMargin
        )
      }
    }
  }

}


