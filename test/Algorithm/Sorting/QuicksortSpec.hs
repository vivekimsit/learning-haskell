module Algorithm.Sorting.QuicksortSpec where

import SpecHelper


main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "quicksort" $ do
        it "returns [] for []" $
            quicksort [] `shouldBe` []
        it "returns [1, 2, 3] for [3, 2, 1]" $
            quicksort [3, 2, 1] `shouldBe` [1, 2, 3]

