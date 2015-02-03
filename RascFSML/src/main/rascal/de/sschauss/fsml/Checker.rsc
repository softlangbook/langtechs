module main::rascal::de::sschauss::fsml::Checker

import Prelude;
import main::rascal::de::sschauss::fsml::AST;

alias Error = tuple[loc l, str msg];
alias ErrorList = list[Error errors];

ErrorList checkSingleInitial([state(_, _, _)], _) = [];

ErrorList checkSingleInitial([], list[STATE] states) = 
	[ <i@location, "no initial state"> | state(i, _, _) <- states];

ErrorList checkSingleInitial(list[STATE] is, list[STATE] states) =
	[ <i@location, "multiple initial states"> | state(i, _, _) <- is ];

ErrorList checkSingleInitial(fsm(states)) =
	checkSingleInitial([ s | s:state(initial(), _, _) <- states], states);
	
ErrorList checkDistinctIds([], _, ErrorList es) = es;

ErrorList checkDistinctIds([id:id(name), ids*], set[ID] dids, ErrorList es) =
	id in dids 
		? checkDistinctIds(ids, dids, es + <id@location, "duplicated state id <name>">)
		: checkDistinctIds(ids, dids + id, es);

ErrorList checkDistinctIds(fsm(states)) =  
	checkDistinctIds(([] | it + s.id | s <- states), {}, []);
	
ErrorList checkResolable({}) = [];	
	
ErrorList checkResolvable(set[ID] ids) = 
	[<id@location, "unresolved id <name>"> | id:id(name) <- ids];
	
ErrorList checkResolvable(fsm(states)) =
	checkResolvable(
		({} | t.id? ? it + t.id : it | t <- ([] | it + ts | state(_, _, ts) <- states)) // collect referenced states ids 
		- 
		{ id | state(_, id, _) <- states } // collect state ids
	);

ErrorList checkStateDeterministic([], _, ErrorList es) = es;

ErrorList checkStateDeterministic([i:input(name), is*], set[INPUT] dis, ErrorList es) = 
	i in dis
		? checkStateDeterministic(is, dis, es + <i@location, "duplicated input <name>">)
		: checkStateDeterministic(is, dis + i, es);
		
ErrorList checkStateDeterministic(fsm(states)) =
	([] | it + checkStateDeterministic(([] | it + t.input | t <- transitions), {}, []) | state(_, _, transitions) <- states);


ErrorList check(FSM f) =
	([]| it + es | es <- [
		checkDistinctIds(f),
		checkSingleInitial(f),
		checkResolvable(f),
		checkStateDeterministic(f)
	]);