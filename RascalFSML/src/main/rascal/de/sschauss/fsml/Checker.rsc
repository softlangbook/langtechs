module main::rascal::de::sschauss::fsml::Checker

import Prelude;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

set[Message] checkStateDeterministic(Fsm f) {
	set[Message] el = {};
	visit(f) {
		case State s: {
			list[Input] inputs = [];
			visit(s.transitions) {
				case Input i: inputs += i;
			};
			el += ({error("duplicated input <i>", i@\loc) | i <- (inputs - dup(inputs))});
		}
	};
	return el;
}
	

set[Message] checkResolvable(Fsm f) {
	set[Id] referencedIds = {};
	set[Id] stateIds = {};
	visit(f) {
		case State s: stateIds += s.id;
		case (Transition)`<Input _> / <Action _> -\> <Id id>;`: referencedIds += id;
		case (Transition)`<Input _> -\> <Id id>;`: referencedIds += id;
	}
	return {error("unresolved state <id>", id@\loc) | id <- referencedIds - stateIds};
}

set[Message] checkSingleInitial(Fsm f) {
	list[Initial] initials = [];
	list[Initial] noninitials = [];
	set[Message] el = {};
	visit(f) {
		case i: (Initial)`initial`: initials += i;
		case i: (Initial)``: noninitials += i;
	}
	switch(initials) {
		case []: el = {error("no initial state", n@\loc) | n <- noninitials};
		case [X, Y, N*]: el = {error("multiple initial states", i@\loc) | i <- initials};
		default: el = {};
	}
	return el;
}


set[Message] checkDistinctIds(Fsm f)  {
	list[Id] ids = [];
	visit(f) {
		case State s: ids = ids + s.id;
	}
	return ({error("duplicated state id <id>", id@\loc) | id <- (ids - dup(ids))});
}


set[Message] check(Fsm f) =
	({}| it + es | es <- [
		checkDistinctIds(f),
		checkSingleInitial(f),
		checkResolvable(f),
		checkStateDeterministic(f)
	]);