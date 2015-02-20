module Algorithm.Sorting.Selectionsort where

minimum'    :: [Int] -> Int
minimum' [] = error "empty list"
minimum' [x] = x
minimum' (x:y:xs) = minimum' ((if x < y then x else y):xs)

selectionsort    :: [Int] -> [Int]
selectionsort [] = []
selectionsort xs = minval : (selectionsort restvals)
    where
        minval   = minimum' xs
        restvals = filter (/= minval) xs

