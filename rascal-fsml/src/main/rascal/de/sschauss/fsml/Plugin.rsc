module main::rascal::de::sschauss::fsml::Plugin

import Prelude;
import util::Eval;
import util::IDE;
import util::ValueUI;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;
import main::rascal::de::sschauss::fsml::Checker;
import main::rascal::de::sschauss::fsml::Generator;
import main::rascal::de::sschauss::fsml::Outliner;
import main::rascal::de::sschauss::fsml::Formatter;
import main::rascal::de::sschauss::fsml::Proposer;
import main::rascal::de::sschauss::fsml::Referencer;
import main::rascal::de::sschauss::fsml::Visualizer;

private str FSMLName = "FSML";
private str FSMLExt = "fsml";

private Tree parser(str x, loc l) {
    return parse(#Fsm, x, l);
}

private Fsm fsmAnnotator (Fsm f) {
	set[Message] errors = check(f);
	f = reference(f);
	return f[@messages = errors];
}

private set[Contribution] FSMLContrib = {
	popup(
		menu("FSML", [
			action("Format", format),
			action("Generate Java", generateJava),
			action("Visualize", visualize)
		])
  	),
  	annotator(fsmAnnotator),
  	outliner(makeFsmOutliner),
  	proposer(makePropose, "(\\s | [a-z0-9])*")
};

public void registerFSML() {
	registerLanguage(FSMLName, FSMLExt, parser);
  	registerContributions(FSMLName, FSMLContrib);
}
public void unregisterFSML() {
       clearLanguage("FSML");
}

public void reregisterFSML() {
       unregisterFSML();
       registerFSML();
}
