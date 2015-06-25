module main::rascal::de::sschauss::fsml::Generator

import Prelude;
import String;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

public void generateJava(Fsm fsm, loc location) =
	writeFile(|<location.scheme>://<location.authority>/src/gen/java/org/softlang/fluent/<generate(location)>.java|, generate(fsm, location));

private str generate(loc location) {
	str filename = last(split("/", location.path));
	return toUpperCase(stringChar(charAt(filename, 0))) + substring(head(split(".", filename)), 1);
}

private str generate((Fsm)`<State* states>`, loc location) =
	"package org.softlang.fluent;
	'
	'import static org.softlang.fluent.FsmlImpl.fsm;
	'
	'public class <generate(location)> {
	'	
	'	public static final Fsml <toUpperCase(generate(location))> =
	'		fsm()
	'			<trim(generate(states))>;
	'}
	";
	
private str generate(State* states) =
	"<for (state <- states){>.<trim(generate(state))>\n<}>";
	
	
private str generate(State state) =
	"state(\"<state.id>\")\n<for(transition <- state.transitions){>\t.<generate(transition)>\n<}>";
	
private str generate((Transition)`<Input input>;`) =
	"transition(\"<input>\", null, null)";
	
private str generate ((Transition)`<Input input> / <Action action>;`) = 
	"transition(\"<input>\", \"<action>\", null)";
	
private str generate ((Transition)`<Input input> -\> <Id id>;`) = 
	"transition(\"<input>\", null, \"<id>\")";
	
private str generate ((Transition)`<Input input> / <Action action> -\> <Id id>;`) = 
	"transition(\"<input>\", \"<action>\", \"<id>\")";