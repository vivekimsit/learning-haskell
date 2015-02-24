module Algorithm.Sorting.Mergesort where


merge :: [Int] -> [Int] -> [Int]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys


mergesort :: [Int] -> [Int]
mergesort []  = []
mergesort [x] = [x]
mergesort xs  = merge (mergesort left) (mergesort right)
    where half  = (length xs) `div` 2
          left  = take half xs
          right = drop half xs
