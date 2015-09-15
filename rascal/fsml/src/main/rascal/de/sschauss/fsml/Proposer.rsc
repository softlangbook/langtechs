module main::rascal::de::sschauss::fsml::Proposer

import Prelude;
import util::ContentCompletion;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

private str ID_SYMBOL_TYPE = "ID";

public list[CompletionProposal] propose(Fsm fsm, str prefix, int requestOffset) {
	list[SymbolTree] symbolTreeList = makeSymbolTreeList(fsm, requestOffset);
	return filterPrefix(createDefaultProposals(symbolTreeList), prefix);
}

private list[SymbolTree] makeSymbolTreeList(Fsm fsm, int requestOffset) {
	list[SymbolTree] symbolTreeList = [];
	bottom-up-break visit (fsm) {
		case (Transition)`<Input _> -\> <Id id>;`:
			if(isWithin(id, requestOffset)) {
				symbolTreeList += makeSymbolTreeList(fsm, requestOffset, ID_SYMBOL_TYPE);
			}
		case (Transition)`<Input _> / <Action _> -\> <Id id>;`:
			if(isWithin(id, requestOffset)) {
				symbolTreeList += makeSymbolTreeList(fsm, requestOffset, ID_SYMBOL_TYPE);
			}
	}
	return symbolTreeList;
}

private list[SymbolTree] makeSymbolTreeList(Fsm fsm, int requestOffset, ID_SYMBOL_TYPE) {
	list[SymbolTree] symbolTreeList = [];
	visit(fsm) {
		case State state: if(!isWithin(state, requestOffset)) {
			symbolTreeList  += symbol("<state.id>", ID_SYMBOL_TYPE);
		}
	}
	return symbolTreeList;
}

