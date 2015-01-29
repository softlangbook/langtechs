module FSMLJavaGenerator

import FSMLSyntax;

public list[str] generate(Fsm f) = [generateStepper(f)];

private str generateStepper(Fsm f) =
  "
  '<for (s <- f.states) {>
  '  <for (t <- s.transitions) {>
  '     <generateStepper(s, t)>
  '  <}>
  '<}>
  ";

str generateStepper(State s, Transition t) {
	   switch(t){
	     case transition(input):
	       return "add(State.<s.id>, Input.<input>, null, State.<s.id>);";
	     case transition(input, id):
	       return "add(State.<s.id>, Input.<input>, null, State.<id>);";
	     case transition(input, action):
	       return "add(State.<s.id>, Input.<input>, Action.<action>, State.<s.id>);";
	     case transition(input, action, id):
	       return "add(State.<s.id>, Input.<input>, Action.<action>, State.<id>);";
	     default:
	     	  return ""; 
	   }
	}