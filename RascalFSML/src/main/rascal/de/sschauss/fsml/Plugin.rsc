module main::rascal::de::sschauss::fsml::Plugin

import Prelude;
import util::IDE;
import util::Eval;
import util::ValueUI;
import main::rascal::de::sschauss::fsml::AST;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;
import main::rascal::de::sschauss::fsml::Checker;
import main::rascal::de::sschauss::fsml::Outliner;


private str FSMLName = "FSML";
private str FSMLExt = "fsml";

Tree parser(str x, loc l) {
    return parse(#Fsm, x, l);
}

public Fsm fsmAnnotator (Fsm f) {
	errors = {error(v, l) | <loc l, str v> <- check(f)};
	f = ref(f);
	return f[@messages = errors];
}

Fsm ref(Fsm f) {
	map[str, loc] ids = ();
	visit(f) {
		case State s: {
			ids["<s.id>"] = s.id@\loc;
		}
	}
	return visit(f){
		case Transition t => visit(t) {
			case Id id => id[@link=ids["<id>"]]
				when "<id>" in ids
		}
	}
}

public node fsmOutliner(Fsm f){
	FSM fsm = implode(#FSM, f);
	node outline= outliner(fsm);
	return outline;
}

public set[Contribution] FSMLContrib = {
	popup(
		menu("FSML",[
		])
  	),
  	annotator(fsmAnnotator),
  	outliner(fsmOutliner)
};

public void registerFSML() {
  registerLanguage(FSMLName, FSMLExt, parser);
  registerContributions(FSMLName, FSMLContrib);
}