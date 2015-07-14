module main::rascal::de::sschauss::fsml::Outliner

import Prelude;
import util::IDE;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

public node makeFsmOutliner(Tree tree) = makeOutliner(tree);

private node makeOutliner(Fsm f){
	node outline = "states"([makeOutliner(s) | s <- f.states]);
	return outline;
}

private node makeOutliner(State s) {
	node outline = "<s.id>"([makeOutliner(t) | t <- s.transitions]);
	outline@\loc = s@\loc;
	return outline;
}

private node makeOutliner(Transition t) {
	node outline = "<t.input>"();
	outline@\loc = t@\loc;
	return outline;
}