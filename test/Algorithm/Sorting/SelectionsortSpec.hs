module Algorithm.Sorting.SelectionsortSpec where

import SpecHelper


main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "selectionsort" $ do
        it "returns [] for []" $
            selectionsort [] `shouldBe` []
        it "returns [1, 2, 3] for [3, 2, 1]" $
            selectionsort [3, 2, 1] `shouldBe` [1, 2, 3]


