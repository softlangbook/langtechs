module main::rascal::de::sschauss::fsml::JavaGenerator

import IO;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

loc genPath = |project://RascFSML/src/gen/java/de/sschauss/fsml/|;

public void generate(Fsm f) {
	writeFile(genPath + "State.java", generateState(f));
	writeFile(genPath + "Input.java", generateInput(f));
	writeFile(genPath + "Action.java", generateAction(f));
	writeFile(genPath + "Stepper.java", generateStepper(f));
}

private str generateState(Fsm f) =
  "package de.sschauss.fsml;
  '
  '// Generated code
  'public enum State {<for(s <- f.states){><s.id>, <}>}
  ";
  
private str generateInput(Fsm f) =
  "package de.sschauss.fsml;
  '
  '// Generated code
  'public enum Input {<for(i <- ({} | it + t.input | s <- f.states, t <- s.transitions )){><i>, <}>}
  ";
  
private str generateAction(Fsm f) =
  "package de.sschauss.fsml;
  '
  '// Generated code
  'public enum Action {<for(i <- ({} | t.action? ? it + t.action : it | s <- f.states, t <- s.transitions )){><i>, <}>}
  ";

private str generateStepper(Fsm f) =
  "package de.sschauss.fsml;
  '
  '// Generated code
  'public class Stepper extends StepperBase\<State, Input, Action\> {
  '  public Stepper(HandlerBase\<Action\> handler) {
  '    this.handler = handler;
  '    state = State.<("" | s.initial? ? it + "<s.id>" : it | State s <- f.states)>;
  '    <for (s <- f.states) {>
  '      <for (t <- s.transitions) {>
  '    add(State.<s.id>, Input.<t.input>, <t.action? ? "Action." + t.action : "null">, State.<t.id? ? t.id : s.id>);  
  '      <}>
  '    <}>
  '  }
  '}
  ";
  
private str generateStepper(State* states) = ("" | s.initial? ? it + "<s.id>" : it | State s <- states);

private str generateStepper(State s, Transition t) = 
 "add(State.<s.id>, Input.<input>, Action.<action>, State.<id>);";