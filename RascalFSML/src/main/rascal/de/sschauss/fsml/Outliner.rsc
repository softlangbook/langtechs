module main::rascal::de::sschauss::fsml::Outliner

import util::IDE;
import main::rascal::de::sschauss::fsml::AST;

public node outliner(FSM f){
	node outline = "states"(([] | it + outliner(s) | s <- f.states));
	outline@\loc = f@location;
	return outline;
}

public node outliner(STATE s) {
	node outline = s.id.name("transitions"(([] | it + outliner(t) | t <- s.transitions)));
	outline@\loc = s@location;
	return outline;
}

public node outliner(TRANSITION t) {
	node outline = t.input.name();
	outline@\loc = t@location;
	return outline;
}