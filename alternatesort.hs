isEmpty :: [Int] -> Bool
isEmpty l = null l

konso :: Int -> [Int] -> [Int]
konso e li = [e] ++ li

isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1 


minElem :: [Int] -> Int
minElem l 
    | isOneElmt l = head l
    | otherwise = if (head l) < minElem (tail l) then (head l) else minElem (tail l)

del :: Int -> [Int] -> [Int]
del x l 
    | isEmpty l = []
    | x == (head l) = tail l
    | otherwise = (head l) : del x (tail l)

sort :: [Int] -> [Int]
sort l 
    | isEmpty l = []
    | otherwise = (minElem l) : (sort (del(minElem l) l)) 