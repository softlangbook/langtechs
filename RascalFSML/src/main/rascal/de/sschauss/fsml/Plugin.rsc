module main::rascal::de::sschauss::fsml::Plugin

import Prelude;
import util::IDE;
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
	errors = { error(v, l) | <loc l, str v> <- check(implode(#FSM, f)) };
	return f[@messages = errors];
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