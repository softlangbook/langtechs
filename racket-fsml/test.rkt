#lang s-exp (planet sschauss/fsml/main)
(state locked true 
                    (transition ticket / collect -> unlocked)
                    (transition pass / alarm -> exception))
(state unlocked false 
                       (transition ticket / eject)
                       (transition pass -> locked))

(state exception false
      (transition ticket / eject)
      (transition pass)
      (transition mute)
      (transition release -> locked))