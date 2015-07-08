module main::rascal::de::sschauss::fsml::Proposer

import Prelude;
import util::ContentCompletion;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

private str ID_SYMBOL_TYPE = "id";

public list[CompletionProposal] makePropose(Tree tree, str prefix, int requestOffset) {
	list[SymbolTree] symbolTreeList = makeSymbolTreeList(tree, requestOffset);
	return  filterPrefix(createDefaultProposals(symbolTreeList), prefix);
}

private list[SymbolTree] makeSymbolTreeList(Tree tree, int requestOffset) {
	list[SymbolTree] symbolTreeList = [];
	bottom-up-break visit (tree) {
		case (Transition)`<Input _> -\> <Id id>;`: if(isWithin(id, requestOffset)) symbolTreeList += makeSymbolTreeList(tree, requestOffset, ID_SYMBOL_TYPE);
		case (Transition)`<Input _> / <Action _> -\> <Id id>;`: if(isWithin(id, requestOffset)) symbolTreeList += makeSymbolTreeList(tree, requestOffset, ID_SYMBOL_TYPE);
	}
	return symbolTreeList;
}

private list[SymbolTree] makeSymbolTreeList(Tree tree, int requestOffset, ID_SYMBOL_TYPE) {
	list[SymbolTree] symbolTreeList = [];
	visit(tree) {
		case State state: if(!isWithin(state, requestOffset)) symbolTreeList  += symbol("<state.id>", ID_SYMBOL_TYPE);
	}
	return symbolTreeList;
}

