module main::rascal::de::sschauss::fsml::Formatter

import Prelude;
import String;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

public void format(Tree tree, loc location) = writeFile(location, trim(pp(tree)));

private str pp((Fsm)`<State* states>`) =
	"<for (state <- states){><pp(state)>\n<}>";

private str pp((State)`initial state <Id id> { <Transition* transitions>}`) =
	"initial state <id> {\n<for (transition <- transitions){>\t<pp(transition)>\n<}>}";
	
private str pp((State)`state <Id id> { <Transition* transitions> }`) =
	"state <id> {\n<for (transition <- transitions){>\t<pp(transition)>\n<}>}";
	
private str pp((Transition)`<Input input>;`) =
	"<input>;";

private str pp((Transition)`<Input input> / <Action action>;`) =
	"<input> / <action>;";

private str pp((Transition)`<Input input> -\> <Id id>;`) =
	"<input> -\> <id>;";

private str pp((Transition)`<Input input> / <Action action> -\> <Id id>;`) =
	"<input> / <action> -\> <id>;";