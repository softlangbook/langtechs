module main::rascal::de::sschauss::fsml::Plugin

import Prelude;
import util::IDE;
import util::Eval;
import util::ValueUI;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;
import main::rascal::de::sschauss::fsml::Checker;
import main::rascal::de::sschauss::fsml::Generator;
import main::rascal::de::sschauss::fsml::Outliner;
import main::rascal::de::sschauss::fsml::Referencer;


private str FSMLName = "FSML";
private str FSMLExt = "fsml";

Tree parser(str x, loc l) {
    return parse(#Fsm, x, l);
}

public Fsm fsmAnnotator (Fsm f) {
	set[Message] errors = check(f);
	f = reference(f);
	return f[@messages = errors];
}



public node fsmOutliner(Fsm f){
	node outline= outliner(f);
	return outline;
}

public void generateFluent(Fsm f, loc _) {
	generateFluent(f);
}

public set[Contribution] FSMLContrib = {
	popup(
		menu("FSML",[
			action("generate fluent Java", generateFluent)
		])
  	),
  	annotator(fsmAnnotator),
  	outliner(fsmOutliner)
};

public void registerFSML() {
	registerLanguage(FSMLName, FSMLExt, parser);
  	registerContributions(FSMLName, FSMLContrib);
}

public void unregisterFSML() {
	clearLanguage("FSML");
}