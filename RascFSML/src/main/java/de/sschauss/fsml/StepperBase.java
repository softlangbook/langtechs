package de.sschauss.fsml;

import java.util.HashMap;

import javafx.util.Pair;

//Reusable code
public abstract class StepperBase<S, I, A> {
	protected S state;
	protected HandlerBase<A> handler;
	private HashMap<S, HashMap<I, Pair<A, S>>> table = new HashMap<S, HashMap<I, Pair<A, S>>>();

	public final void add(S from, I i, A a, S to) {
		if (!table.containsKey(from))
			table.put(from, new HashMap<I, Pair<A, S>>());
		HashMap<I, Pair<A, S>> subtable = table.get(from);
		Pair<A, S> pair = new Pair<A, S>(a, to);
		subtable.put(i, pair);
	}

	public final void step(I i) {
		HashMap<I, Pair<A, S>> subtable = table.get(state);
		Pair<A, S> pair = subtable.get(i);
		S from = state;
		S to = pair.getValue();
		System.out.println("from: " + from + ", input: " + i + ", to: " + to);
		if (pair.getKey() != null)
			handler.handle(pair.getKey());
		state = to;
	}
}