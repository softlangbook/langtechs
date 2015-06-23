module main::rascal::de::sschauss::fsml::Visualizer

import IO;
import Prelude;
import vis::Figure;
import vis::KeySym;
import vis::Render;
import main::rascal::de::sschauss::fsml::ConcreteSyntax;

public void visualize(Tree t) {
	list[Figure] nodes = [];
	list[Edge] edges = [];
	visit(t) {
		case State state : {
			nodes += getFigure(state);
			visit(state.transitions) {
				case (Transition)`<Input _> / <Action _> -\> <Id to>;`: {
					edges += getFigure(state.id, to);
				}				
				case (Transition)`<Input _> -\> <Id to>;`: {
					edges += getFigure(state.id, to);
				}	
			}	
		}
	}
	render(graph(nodes, edges, hint("layered"), gap(200)));
}

private Figure getFigure(State state) {
	return ellipse(text("<state.id>"),  id("<state.id>"), fillColor(gray(200)), gap(4));
}

private Edge getFigure(Id from, Id to) {
	return edge("<from>", "<to>", toArrow(triangle(10, fillColor("black")))); 
}


