module Algorithm.Sorting.Quicksort where


quicksort :: [Int] -> [Int]
quicksort []     = []
quicksort (p:xs) = quicksort smaller ++ [p] ++ quicksort greater
    where
        smaller = filter (< p) xs
        greater = filter (>= p) xs
