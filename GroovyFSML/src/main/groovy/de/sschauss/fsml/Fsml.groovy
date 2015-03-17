package de.sschauss.fsml

class Transition {
    String input
    String action
    @Lazy(soft = true)
    State target
}

class State {
    List<Transition> transitions = []
}

class Fsm {

    List<State> states = []

}


static main(String[] args) {

}
