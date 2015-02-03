module main::rascal::de::sschauss::fsml::ConcreteSyntax

import Prelude;

extend lang::std::Layout;

start syntax Fsm = fsm: State* states;
syntax State = @Foldable state: Initial initial "state" Id id "{" Transition* transitions "}"; 
syntax Initial = 
	  initial: "initial"
	| noninitial: "";
syntax Transition = 
	  transition: Input input";"
	| transition: Input input "-\>" Id id ";"
	| transition: Input input "/" Action action ";"
	| transition: Input input "/" Action action "-\>" Id id ";";

syntax Id = id: Name;
syntax Input = input: Name;
syntax Action = action: Name;
lexical Name = [a-z][a-z0-9]* !>> [a-z0-9];