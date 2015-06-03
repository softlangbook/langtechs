[
   Fsm               -- _1,
   Fsm.1:iter-star   -- _1,
   State             -- _1 KW["state"] _2 KW["{"] _3 KW["}"],
   State.1:opt       -- _1,
   State.3:iter-star -- _1,
   Transition        -- _1 _2 _3 KW[";"],
   Transition.2:opt  -- _1,
   Transition.3:opt  -- _1,
   Initial           -- KW["initial"],
   Input             -- _1,
   Action            -- KW["/"] _1,
   Target            -- KW["->"] _1
]