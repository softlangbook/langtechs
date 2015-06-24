module main::rascal::de::sschauss::fsml::Generator

import Prelude;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

private str generate(Fsm f) =
	"// BEGIN ...
	'package org.softlang.fluent;
	'
	'import static org.softlang.fluent.FsmlImpl.fsm;
	'
	'public class Sample {
	'	
	'	public static final
	'// END ...
	'	Fsml sample =
	'		fsm()<for (s <- f.states){>
	'			.state(\"<s.id>\")
	'				<for (t <- s.transitions){>.transition(<generate(t)>)
	'				<}><}>
	'			;
	'// BEGIN ...
	'}
	'// END ...";
	
private str generate(Transition t) {
	switch(t){
		case (Transition)`<Input input>;`: return "\"<input>\", null, null";
		case (Transition)`<Input input> / <Action action>;`: return "\"<input>\", \"<action>\", null";
		case (Transition)`<Input input> -\> <Id id>;`: return "\"<input>\", null, \"<id>\"";
		case (Transition)`<Input input> / <Action action> -\> <Id id>;`: return "\"<input>\", \"<action>\", \"<id>\"";
	}
}	
	
public void generateFluent(Fsm f){
	writeFile(|project://rascal-fsml/src/gen/java/org/softlang/fluent/Sample.java|, generate(f));
}