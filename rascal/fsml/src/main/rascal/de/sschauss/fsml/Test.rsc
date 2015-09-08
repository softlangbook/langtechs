module main::rascal::de::sschauss::fsml::Test

import Prelude;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;
import main::rascal::de::sschauss::fsml::Checker;

test bool determinismNotOk() {
	Fsm fsm = parseFsm(|project://fsml/src/main/resources/determinismNotOk.fsml|);
	return {H*, error("duplicated input eventI", P), T*} := checkConstraints(fsm);
}

test bool idsNotOk() {
	Fsm fsm = parseFsm(|project://fsml/src/main/resources/idsNotOk.fsml|);
	return {H*, error("duplicated state id stateA", P), T*} := checkConstraints(fsm);
}

test bool initialNotOk1() {
	Fsm fsm = parseFsm(|project://fsml/src/main/resources/initialNotOk1.fsml|);
	return {H*, error("no initial state", P), T*} := checkConstraints(fsm);;
}

test bool initialNotOk2() {
	Fsm fsm = parseFsm(|project://fsml/src/main/resources/initialNotOk1.fsml|);
	return {H*, error("no initial state", P), T*} := checkConstraints(fsm);;
}

test bool initialNotOk2() {
	Fsm fsm = parseFsm(|project://fsml/src/main/resources/initialNotOk2.fsml|);
	return {H*, error("multiple initial states", P), T*} := checkConstraints(fsm);;
}

test bool reachabilityNotOk() {
	Fsm fsm = parseFsm(|project://fsml/src/main/resources/reachabilityNotOk.fsml|);
	return {H*, warning("unreachable state stateC", P), T*} := checkConstraints(fsm);;
}

test bool resolutionNotOk() {
	Fsm fsm = parseFsm(|project://fsml/src/main/resources/resolutionNotOk.fsml|);
	return {H*, error("unresolved state stateC", P), T*} := checkConstraints(fsm);;
}

private Fsm parseFsm(loc location) =
	parse(#Fsm, readFile(location));
	