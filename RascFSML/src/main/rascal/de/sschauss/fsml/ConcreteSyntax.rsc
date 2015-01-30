module main::rascal::de::sschauss::fsml::ConcreteSyntax

import IO;
import Prelude;

extend lang::std::Layout;
extend lang::std::Id;

start syntax Fsm = fsm: State* states;
syntax State = 
    "state" Id id "{" Transition* transitions "}" 
  | state: Initial initial "state" Id id "{" Transition* transitions "}";  
syntax Initial = "initial";
syntax Transition = 
    transition: Input input ";"
  | transition: Input input "-\>" Id id ";"
  | transition: Input input "/" Action action ";"
  | transition: Input input "/" Action action "-\>" Id id ";"; // optionals in rascal
	  
lexical Input = input: Id;
lexical Action = action: Id;	

public Fsm fsm(loc location) {
   try
      return parse(#Fsm, readFile(location)); 
   catch ParseError(loc l): {
   	   println("Error: line: <l.begin.line>, column: <l.begin.column>");
   	   return parse(#Fsm, "");
   	}
}