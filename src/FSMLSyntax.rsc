module FSMLSyntax

import IO;
import Prelude;

extend lang::std::Layout;
extend lang::std::Id;

start syntax Fsm = fsm: State* states;
syntax State = @		Foldable state: Initial "state" Id id "{" 		Transition* transitions 	"}";
syntax Initial = initial: "initial"?;
syntax Transition = @Foldable transition: Input input ("/" Action action)? ("-\>" Id id)? ";";
	
lexical Input = input: Id;
lexical Action = action: Id;	

public Fsm fsm(str location) {
   try 
      return parse(#Fsm, ("" | it + e | str e <- readFile(location))); 
   catch Error: {
   	   println("Oops! Something went wrong. Here is an empty FSM for you.");
   	   return parse(#Fsm, "");
   	}
}