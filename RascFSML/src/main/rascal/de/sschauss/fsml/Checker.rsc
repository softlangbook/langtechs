module main::rascal::de::sschauss::fsml::Checker

import Prelude;
import main::rascal::de::sschauss::fsml::AST;

alias ErrorList = list[tuple[loc l, str msg] errors];

ErrorList checkDistinct(list[ID] ids, set[ID] dids, ErrorList es) = // TODO: more readable solution
	size(ids) == 0
		? es 
		: head(ids) in dids 
			? checkDistinct(tail(ids), dids, es + <head(ids)@location, "duplicated state id <head(ids)[0]>">)
			: checkDistinct(tail(ids), dids + head(ids), es);


ErrorList checkDistinct(fsm(list[STATE] states), ErrorList es) =  
	checkDistinct(([] | it + s.id | s <- states), {}, es);


ErrorList check(FSM f) {
	return checkDistinct(f, []);
}