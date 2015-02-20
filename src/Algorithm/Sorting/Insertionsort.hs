module Algorithm.Sorting.Insertionsort where

import Data.List (insert)


insertionsort :: [Int] -> [Int]
insertionsort [] = []
insertionsort (x:xs) = insert x (insertionsort xs)
                       {- insert puts the element in the sorted order -}
