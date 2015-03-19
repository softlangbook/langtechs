package de.sschauss.fsml

import groovy.transform.ToString
import groovy.transform.TypeChecked

@ToString
class Transition {
    String input
    String action
    @Lazy(soft = true)
    State target


    Transition trigger(String action) {
        this.action = action
        this
    }

    Transition to(State target) {
        this.target = target
        this
    }

}

@ToString
class State {

    String id

    boolean initial = false

    List<Transition> transitions = []

    Transition take(String input) {
        def transition = new Transition(input: input)
        transitions.add(transition)
        transition
    }

}

@ToString
abstract class Fsm {

    String name

    static State initial(@DelegatesTo(value = State, strategy = Closure.DELEGATE_FIRST) State s) {
        s.initial = true
        s
    }

    State state(@DelegatesTo(value = State, strategy = Closure.DELEGATE_FIRST) Closure c) {
        def state = new State();
        def closure = c.rehydrate(state, this, this)
        closure.resolveStrategy = Closure.DELEGATE_FIRST
        closure.call()
        state
    }

    void init() {
        this.metaPropertyValues.stream() filter {
            PropertyValue mpv -> mpv.type == State.class
        } forEach {
            PropertyValue mpv -> ((State) mpv.value).id = mpv.name
        }
    }
}


@TypeChecked
@ToString
class TurnstileFsm extends Fsm {

    TurnstileFsm() {
        init() // 
    }

    State locked = initial state {
        take "ticket" trigger "collect" to unlocked
        take "pass" trigger "alarm" to exception
    }

    State unlocked = state {
        take "ticket" trigger "eject"
        take "pass" to locked
    }

    State exception = state {
        take "ticket" trigger "eject"
        take "pass"
        take "mute"
        take "release" to locked
    }

}


static main(String[] args) {
    def a = new TurnstileFsm()
    println(a)
}
