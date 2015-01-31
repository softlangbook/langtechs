module main::rascal::de::sschauss::fsml::AST

alias NAME = str;

data FSM = fsm(list[STATE] states);
data STATE = state(INITIAL, ID id, list[TRANSITION] transitions);
data INITIAL = 
	  initial() 
	| noninitial();
data TRANSITION = 
	  transition(INPUT input)
	| transition(INPUT input, ID id)
	| transition(INPUT input, ACTION action)
	| transition(INPUT input, ACTION action, ID id);
data ID = id(NAME name);
data INPUT = input(NAME name);
data ACTION = action(NAME name);

anno loc FSM @ location;
anno loc STATE @ location;
anno loc INITIAL @ location;
anno loc TRANSITION @ location;
anno loc ID @ location;
anno loc INPUT @ location;
anno loc ACTION @ location;