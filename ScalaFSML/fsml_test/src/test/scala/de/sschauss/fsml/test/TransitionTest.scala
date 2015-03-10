package de.sschauss.fsml.test

import de.sschauss.fsml._
import org.scalacheck.Gen
import org.scalatest.FreeSpec
import org.scalatest.prop.GeneratorDrivenPropertyChecks

class TransitionTest extends FreeSpec with GeneratorDrivenPropertyChecks {

  def optionStringGen: Gen[Option[String]] = for {
    string <- Gen.identifier
    optionString <- optionGen[String](string)
  } yield optionString

  def optionGen[T](t: T): Gen[Option[T]] = Gen.oneOf[Option[T]](Some(t), None)

  def optionStateGen: Gen[Option[State]] = for {
    state <- stateGen
    optionState <- optionGen[State](state)
  } yield optionState

  def stateGen: Gen[State] = for {
    initial <- boolGen
    id <- stringGen
  } yield new State(initial, id, List())

  def stringGen: Gen[String] = Gen.identifier

  def boolGen: Gen[Boolean] = Gen.oneOf[Boolean](true, false)


  "All transitions" - {
    "should build by the internal DSL should..." in {
      forAll(stringGen, optionStringGen, optionStateGen) { (input, optionAction, optionState) =>
        val transition: Transition = (optionAction, optionState) match {
          case (None, None) => input
          case (None, Some(state)) => input -> state
          case (Some(action), None) => input / action
          case (Some(action), Some(state)) => input / action -> state
        }
        assert(transition.input == input)
        assert(transition.action == optionAction)
        assert(transition.to == optionState)
      }
    }
  }

}
