konso :: Int -> [Int] -> [Int]
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
konsDot li e = li ++ [e]

isEmpty :: [Int] -> Bool
isEmpty l = null l

isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1 

-- Definisi dan Spesifikasi
offsetList :: [Int] -> (Int -> Int) -> [Int]

-- Realisasi
offsetList l offset =
    if isEmpty l then []
    else 
        konso (offset (head l)) (offsetList (tail l) offset)

plus2 :: Int -> Int
-- plus2 a menghasilkan a + 2

plus2 a = a + 2

minus1 :: Int -> Int
-- minus1 a menghasilkan a - 1
minus1 a = a -1

-- Definisi dan Spesifikasi
offKond :: Int -> Int

-- Realisasi
offKond a = 
    if (a >= 0) && (a <= 40) then 10
    else if (a > 40) then 20
    else 0