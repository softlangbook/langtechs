module FSMLJavaGenerator

import FSMLSyntax;

public list[str] generate(Fsm f) = [generateStepper(f)];

private str generateStepper(Fsm f) =
  "
  '<for (s <- f.states) {>
  '  <for (t <- s.transitions) {>
  '     <generateSteppers(s, t)>
  '  <}>
  '<}>
  ";
  
private str generateStepper(State state, Transition t) = 
	   "
	   '
	   ";