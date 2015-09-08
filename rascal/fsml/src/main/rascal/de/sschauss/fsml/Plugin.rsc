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

private str FSML_NAME = "FSML";
private str FSML_EXT = "fsml";

private Tree parser(str x, loc l) {
    return parse(#Fsm, x, l);
}

private Fsm annotateFsm (Fsm f) {
	set[Message] errors = checkConstraints(f);
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
  	annotator(annotateFsm),
  	outliner(outlineFsm),
  	proposer(makePropose, "(\\s | [a-z0-9])*")
};

public void registerFSML() {
	registerLanguage(FSML_NAME, FSML_EXT, parser);
  	registerContributions(FSML_NAME, FSMLContrib);
}
