module main::rascal::de::sschauss::fsml::ConcreteSyntax

import Prelude;
extend lang::std::Layout;

start syntax Fsm = fsm: State* states;
syntax State = @Foldable state: "initial"? "state" Id id "{" Transition* transitions "}"; 
syntax Transition = transition: Input input ("/" Action action)? ("-\>" Id id)? ";";

syntax Id = Name;
syntax Input = Name;
syntax Action = Name;
lexical Name = ([a-z][a-z0-9]* !>> [a-z0-9]);