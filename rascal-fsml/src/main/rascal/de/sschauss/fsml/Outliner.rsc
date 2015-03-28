module main::rascal::de::sschauss::fsml::Outliner

import util::IDE;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

public node outliner(Fsm f){
	node outline = "states"([outliner(s) | s <- f.states]);
	return outline;
}

public node outliner(State s) {
	node outline = "<s.id>"([outliner(t) | t <- s.transitions]);
	outline@\loc = s@\loc;
	return outline;
}

public node outliner(Transition t) {
	node outline = "<t.input>"();
	outline@\loc = t@\loc;
	return outline;
}