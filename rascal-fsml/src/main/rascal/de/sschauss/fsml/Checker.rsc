module main::rascal::de::sschauss::fsml::Checker

import Prelude;
import util::Maybe;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

public set[Message] check(Fsm f) =
	checkDistinctIds(f) +
	checkSingleInitial(f) +
	checkResolvable(f) +
	checkStateDeterministic(f) +
	checkReachable(f);
	
private set[Message] checkStateDeterministic(Fsm f) {
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
	

private set[Message] checkResolvable(Fsm f) {
	set[Id] referencedIds = {};
	set[Id] stateIds = {};
	visit(f) {
		case State s: stateIds += s.id;
		case (Transition)`<Input _> / <Action _> -\> <Id id>;`: referencedIds += id;
		case (Transition)`<Input _> -\> <Id id>;`: referencedIds += id;
	}
	return {error("unresolved state <id>", id@\loc) | id <- referencedIds - stateIds};
}

private set[Message] checkSingleInitial(Fsm f) {
	set[State] initialStates = {};
	set[State] noninitialStates = {};
	set[Message] el = {};
	visit(f) {
		case state: (State)`initial state <Id _> { <Transition* _> }`: initialStates += state;
		case state: (State)`state <Id _> { <Transition* _> }`: noninitialStates += state;
	}
	switch(initialStates) {
		case {}: el = {error("no initial state", n@\loc) | n <- noninitialStates};
		case {X, Y, N*}: el = {error("multiple initial states", i@\loc) | i <- initialStates};
		default: el = {};
	}
	return el;
}


private set[Message] checkDistinctIds(Fsm f) {
	list[Id] ids = [];
	visit(f) {
		case State s: ids = ids + s.id;
	}
	return {error("duplicated state id <id>", id@\loc) | id <- (ids - dup(ids))};
}


private set[Message] checkReachable(Fsm f) {
	rel[str, str] initial = {};
	rel[str, str] relation = {};
	visit(f) {
		case (State)`initial state <Id from> {<Transition* ts>}` : visit(ts){
			case (Transition)`<Input _> -\> <Id to>;`: initial += <"<from>", "<to>">;
			case (Transition)`<Input _> / <Action _>  -\> <Id to>;`: initial += <"<from>", "<to>">;			
		}
		
		case (State)`state <Id from> {<Transition* ts>}` : 	visit(ts){
			case (Transition)`<Input _> -\> <Id to>;`: relation += <"<from>", "<to>">;			
			case (Transition)`<Input _> / <Action _> -\> <Id to>;`: relation += <"<from>", "<to>">;
		}
	}
	rel[str, str] previous;
	do {	
		previous = initial;		
		solve(relation) {
			initial += (initial o relation);
		}
	} while(previous != initial);
	return {warning("unreachable state <id>", id@\loc) | id <- {s.id | s <- f.states} - {i | <_, id> <- initial, just(i) := getStateId(id, f) }};;
}

private Maybe[Id] getStateId(str id, Fsm f){
	visit(f){
		case State s: {
			if(id == "<s.id>") return just(s.id);
		}
	}
	return nothing();
}