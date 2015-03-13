module main::rascal::de::sschauss::fsml::Checker

import Prelude;
import main::rascal::de::sschauss::fsml::AST;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

alias Error = tuple[loc l, str msg];
alias ErrorList = list[Error errors];
		
ErrorList checkStateDeterministic(FSM f) {
	ErrorList el = [];
	visit(f) {
		case state(id, _, transitions): {
			list[INPUT] inputs = [];
			visit(transitions) {
				case INPUT i: inputs += i;
			};
			el += ([<i@location, "duplicated input <i.name>"> | i <- (inputs - dup(inputs))]);
		}
	};
	return el;
}
	

ErrorList checkResolvable(FSM f) {
	set[ID] referencedIds = {};
	set[ID] stateIds = {};
	visit(f) {
		case transition(_, ID id) : referencedIds += id; 
		case transition(_, _, ID id): referencedIds += id;
		case state(_, id, _): stateIds += id;
	};
	return [<id@location, "unresolved state <id.name>"> | id <- referencedIds - stateIds];
}

ErrorList checkSingleInitial(FSM f) {
	list[INITIAL] initials = [];
	list[INITIAL] noninitials = [];
	visit(f) {
		case i:initial(): initials += i;
		case n:noninitial(): noninitials += n;
	};
	ErrorList el;
	switch(initials) {
		case []: el = [<n@location, "no initial state"> | n <- noninitials];
		case [initial()]: el = [];
		default: el = [<i@location, "multiple initial states"> | i <- initials];
	}
	return el;
}


ErrorList checkDistinctIds(Fsm f)  {
	list[Id] ids = [];
	visit(f) {
		case State s: ids = ids + s.id;
	};
	return ([<id@\loc, "duplicated state id <id>"> | id <- (ids - dup(ids))]);
}


ErrorList check(Fsm f) =
	([]| it + es | es <- [
		checkDistinctIds(f)
		//checkSingleInitial(f),
		//checkResolvable(f),
		//checkStateDeterministic(f)
	]);