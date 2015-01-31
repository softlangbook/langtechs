module main::rascal::de::sschauss::fsml::Plugin

import Prelude;
import util::IDE;
import util::ValueUI;
import main::rascal::de::sschauss::fsml::AST;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;
import main::rascal::de::sschauss::fsml::Checker;


private str FSMLName = "FSML";
private str FSMLExt = "fsml";

Tree parser(str x, loc l) {
    return parse(#Fsm, x, l);
}

public Fsm checkFsm (Fsm f) {
	errors = { error(v, l) | <loc l, str v> <- check(implode(#FSM, f)) };
	return f[@messages = errors];
}


public set[Contribution] FSMLContrib = {
	popup(
		menu("FSML",[	
	    ])
  	)
};

public void registerFSML() {
  registerLanguage(FSMLName, FSMLExt, parser);
  registerAnnotator(FSMLName, checkFsm);
  registerContributions(FSMLName, FSMLContrib);
}
