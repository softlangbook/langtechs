package de.sschauss.fsml


def state(Closure c) {
    def state = new State()
    def clone = c.rehydrate(state, this, this)
    clone.resolveStrategy = Closure.DELEGATE_FIRST
    clone.call()
    state
}

class State {
    List<Transition> transitions = [];

    def takes(String input) {
        [triggers: { String action ->
            [to: { String target ->
                transitions.add(new Transition(input: input, action: action, target: target))
            },
            null: {
                transitions.add(new Transition(input: input))
            }]
        },
         to      : { String target ->
             transitions.add(new Transition(input: input, target: target))
         }]
    }
}

class Transition {
    String input
    String action
    String target
}

static main(String[] args) {
    def locked = state {
        takes "ticket" triggers "collect" to "unlocked"
        takes "pass" triggers "alarm" to "exception"
    }
    def unlocked = state {
        takes "pass"
    }
    println unlocked.transitions
}
