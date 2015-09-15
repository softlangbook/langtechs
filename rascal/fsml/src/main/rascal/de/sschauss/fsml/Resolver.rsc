module main::rascal::de::sschauss::fsml::Resolver

import Prelude;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

public Fsm resolve(Fsm f) {
	map[str, loc] stateIds = ();
	map[str, loc] transitionIds = ();
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