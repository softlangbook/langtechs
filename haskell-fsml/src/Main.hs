module Main where


{-
turnstileFsm :: Fsm
turnstileFsm = Fsm [locked, unlocked, exception]
locked :: State
locked = State True "unlocked" [
        Transition "ticket" (Just "collect") (Just unlocked),
        Transition "pass" (Just "alarm") (Just exception)
    ]
unlocked :: State
unlocked = State False "unlocked" [
        Transition "ticket" (Just "eject") Nothing,
        Transition "pass" Nothing (Just locked)
    ]
exception :: State
exception = State False "exception" [
        Transition "ticket" (Just "eject") Nothing,
        Transition "pass" Nothing Nothing,
        Transition "mute" Nothing Nothing,
        Transition "release" Nothing (Just locked)
    ]
-}

main :: IO()
main = print "
