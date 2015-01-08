{-# OPTIONS_GHC -F -pgmF hspec-discover #-} -- Finds and runs all test automagically,
                                            -- in case of any trouble manually export
                                            -- the path where cabal install the bin.
                                            -- export $PATH = $HOME/.cabal/bin:$PATH

-- For manaul run runhaskell -isrc -itest test/Spec.hs
