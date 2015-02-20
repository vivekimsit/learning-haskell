module Algorithm.Sorting.InsertionsortSpec where

import SpecHelper


main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "insertionsort" $ do
        it "returns [] for []" $
            insertionsort [] `shouldBe` []
        it "returns [1] for [1]" $
            insertionsort [1] `shouldBe` [1]
        it "returns [1, 2, 3] for [3, 2, 1]" $
            insertionsort [3, 2, 1] `shouldBe` [1, 2, 3]
        it "returns [1, 2, 3] for [1, 2, 3]" $
            insertionsort [3, 2, 1] `shouldBe` [1, 2, 3]

