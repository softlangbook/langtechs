module main::rascal::de::sschauss::fsml::Plugin

import Prelude;
import util::Eval;
import util::IDE;
import util::ValueUI;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;
import main::rascal::de::sschauss::fsml::Checker;
import main::rascal::de::sschauss::fsml::Generator;
import main::rascal::de::sschauss::fsml::Outliner;
import main::rascal::de::sschauss::fsml::PrettyPrinter;
import main::rascal::de::sschauss::fsml::Proposer;
import main::rascal::de::sschauss::fsml::Resolver;
import main::rascal::de::sschauss::fsml::Visualizer;

private str FSML_NAME = "FSML";
private str FSML_EXT = "fsml";

private Fsm parseFsm(str source, loc location) {
	return parse(#Fsm, source, location);
}

private Fsm annotateFsm (Fsm f) {
	set[Message] errors = checkConstraints(f);
	f = resolve(f);
	return f[@messages = errors];
}

private set[Contribution] FSMLContrib = {
	popup(
		menu("FSML", [
			action("Format", ppFsm),
			action("Generate Java", generateJava),
			action("Visualize", visualize)
		])
	),
	annotator(annotateFsm),
	outliner(outlineFsm),
	proposer(propose, "(\\s | [a-z0-9])*")
};

public void registerFSML() {
	registerLanguage(FSML_NAME, FSML_EXT, parseFsm);
	registerContributions(FSML_NAME, FSMLContrib);
}
