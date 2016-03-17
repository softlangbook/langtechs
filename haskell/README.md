#Dependencies

- (Glasgow Haskell Compiler)[https://www.haskell.org/downloads]
- (Cabal)[https://www.haskell.org/cabal/]

#Build

Use the Makefile to build the binaries.
Or cd to the source dir and run
- `cabal sandbox init` 
- `cabal install --enable-tests`
- `cabal test`

#Structure
- fsml
  - executable
    - Main.hs: example usage of the quasiquoter
  - library/language
    - Fsml.hs: re export modules
      - Fsml
        - AST.hs
        - CS.hs
        - Check.hs
        - Parser.hs
        - Quoter.hs
        - Runtime.hs
