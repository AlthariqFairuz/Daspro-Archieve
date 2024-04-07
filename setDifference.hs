--menampilkan list yang berbeda/ tidak ada yang sama pada list 1 / l1
setdiff :: [Int] -> [Int] -> [Int]
isEqual :: Int -> [Int] -> Bool

isEqual a l 
    | null l = False 
    | a == (head l) = True
    | otherwise = isEqual a (tail l)

setdiff [] l2 = []
setdiff l1 [] = l1
setdiff l1 l2 -- cukup l1 aja yang direkursi, l2 sebagai pembanding ajas
    | not (isEqual (head l1) l2) = (head l1) : setdiff (tail l1) l2
    | otherwise = setdiff (tail l1) l2