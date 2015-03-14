module main::rascal::de::sschauss::fsml::Referencer

import Prelude;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

Fsm reference(Fsm f) {
	map[str, loc] stateIds = ();
	visit(f) {
		case State s: stateIds["<s.id>"] = s.id@\loc;
	}
	return visit(f){
		case Transition t => visit(t) {
			case Id id => id[@link=stateIds["<id>"]]
				when "<id>" in stateIds
		}
	}
}