module Algorithm.Sorting.MergesortSpec where

import SpecHelper


main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "merge" $ do
        it "should return [] for [] []" $
            merge [1] [2] `shouldBe` [1, 2]
        it "should return [1, 2] for [1] [2]" $
            merge [1] [2] `shouldBe` [1, 2]
        it "should return [1, 2] for [2] [1]" $
            merge [2] [1] `shouldBe` [1, 2]
        it "should return [1, 2, 3, 4] for [3, 4] [1, 2]" $
            merge [3, 4] [1, 2] `shouldBe` [1, 2, 3, 4]

    describe "mergesort" $ do
        it "should return [] for []" $
            mergesort [] `shouldBe` []
        it "should return [1, 2] for [1, 2]" $
            mergesort [1, 2] `shouldBe` [1, 2]
        it "should return [2, 1, 4, 0] for [0, 1, 2, 4]" $
            mergesort [2, 1, 4, 0] `shouldBe` [0, 1, 2, 4]
