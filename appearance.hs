-- menghitung berapa banyak elemen x muncul
nbOcc :: [Int] -> Int -> Int
nbOcc [] _ = 0
nbOcc l i 
    | (head l) == i = 1 + nbOcc (tail l) i
    | otherwise = nbOcc (tail l) i
    