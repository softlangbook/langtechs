package de.sschauss.fsml

import org.scalatest.FunSuite
import de.sschauss.fsml.macros._

import scala.collection.immutable.{StringOps => s}

/**
 * Created by simon on 10/10/2015.
 */
class MacroTestSuite extends FunSuite {

  test("object hold name value") {
    @Fsm
    object TurnstileFsm {

    }

  }

}
