module Algorithm.Sorting.Selectionsort where


selectionsort :: [Int] -> [Int]
selectionsort [] = []
selectionsort xs = minval : (selectionsort restvals)
    where
        minval   = minimum xs
        restvals = filter (/= minval) xs

