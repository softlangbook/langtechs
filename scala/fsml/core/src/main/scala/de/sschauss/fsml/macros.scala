package de.sschauss.fsml


package object macros {

  import scala.annotation.StaticAnnotation
  import scala.reflect.macros.whitebox
  import scala.language.experimental.macros
  import scala.language.postfixOps
  import scala.language.implicitConversions

  implicit def stringToTransition(input: String): Transition = new Transition(input, None, None)

  implicit def stringToState(id: String): State = new State(false, List())


  class Fsm extends StaticAnnotation {
    def macroTransform(annottees: Any*): Any = macro fsmMacro
  }

  def fsmMacro(context: whitebox.Context)(annottees: context.Tree*): context.Tree = {
    import context.universe._
    val q"object $name extends ..$parents { ..${body: List[Tree]}}" = annottees.head
    val stateTermNames: List[(Boolean, TermName, List[Tree])] = body.collect {
      case q"def ${state: TermName}: State = initial state { ..${transitions: List[Tree]} }" => (true, state, transitions)
      case q"def ${state: TermName}        = initial state { ..${transitions: List[Tree]} }" => (true, state, transitions)
      case q"def ${state: TermName}: State =         state { ..${transitions: List[Tree]} }" => (false, state, transitions)
      case q"def ${state: TermName}        =         state { ..${transitions: List[Tree]} }" => (false, state, transitions)
    }
    val initialState = stateTermNames.collectFirst { case (true, name, _) => name } get
    val states =
      q"""
      object states {
        def apply() = $initialState
        ..${
        stateTermNames.map {
          case (_, name, transitions) =>
            val inputs: List[Tree] = transitions map {
              case q"${input: String} / $action -> $target" => q"def ${TermName(s"$input")} = { println($action); $target }"
              case q"${input: String} / $action" => q"def ${TermName(s"$input")} = { println($action); $name }"
              case q"${input: String} -> $target" => q"def ${TermName(s"$input")} = $target"
              case q"${input: String}" => q"def ${TermName(s"$input")} = $name"
            }
            q"object $name { ..$inputs }"
        }
      }
      }
    """
    q"""
        object $name extends ..$parents {
          $states
          ..$body
        }
    """
  }

  object initial {
    def state(transition: Transition): State = macro stateMacro

    def state(unit: Unit): State = new State(false, List())

    def stateMacro(context: whitebox.Context)(transition: context.Tree): context.Tree = {
      import context.universe._
      val q"..$transitions" = transition
      q"new State(true, $transitions)"
    }
  }

  object state {
    def apply(transition: Transition): State = macro stateMacro

    def apply(unit: Unit): State = new State(false, List())

    def stateMacro(context: whitebox.Context)(transition: context.Tree): context.Tree = {
      import context.universe._
      val q"..$transitions" = transition
      q"new State(false, $transitions)"
    }
  }

  class State(final val initial: Boolean, `transitions'`: => List[Transition]) {
    final lazy val transitions = `transitions'`
  }

  class Transition(final val input: String, final val action: Option[String], `target'`: => Option[State]) {
    final lazy val target = `target'`

    def /(action: String): Transition = new Transition(input, Some(action), target)

    def ->(target: State): Transition = new Transition(input, action, Some(target))
  }


}

