module main::rascal::de::sschauss::fsml::Checker

import Prelude;
import main::rascal::de::sschauss::fsml::AST;

alias Error = tuple[loc l, str msg];
alias ErrorList = list[Error errors];

ErrorList checkStateDeterministic([], _, ErrorList es) = es;

ErrorList checkStateDeterministic([i:input(name), is*], set[INPUT] dis, ErrorList es) = 
	i in dis
		? checkStateDeterministic(is, dis, es + <i@location, "duplicated input <name>">)
		: checkStateDeterministic(is, dis + i, es);
		
ErrorList checkStateDeterministic(fsm(states)) =
	([] | it + checkStateDeterministic(([] | it + t.input | t <- transitions), {}, []) | state(_, _, transitions) <- states);
	

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


ErrorList checkDistinctIds(FSM f)  {
	list[ID] ids = [];
	visit(f) {
		case state(_, id, _): ids = ids + id;
	};
	return ([<id@location, "duplicated state id <id.name>"> | id <- (ids - dup(ids))]);
}


ErrorList check(FSM f) =
	([]| it + es | es <- [
		checkDistinctIds(f),
		checkSingleInitial(f),
		checkResolvable(f),
		checkStateDeterministic(f)
	]);