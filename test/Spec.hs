{-# OPTIONS_GHC -F -pgmF hspec-discover #-} -- Finds and runs all test automagically,
                                            -- in case of any trouble manually export
                                            -- the path where cabal installs the bin.
                                            -- export $PATH = $HOME/.cabal/bin:$PATH

-- For manual run runhaskell -isrc -itest test/Spec.hs
