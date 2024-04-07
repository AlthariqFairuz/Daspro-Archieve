--membuang semua angka yang tidak berkaitan dnegan 5 (angka max dalam puluhan)
happyFive :: [Int] -> [Int]
konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
happyFive [] = []
happyFive l 
    | mod (head l) 5 == 0  || div (head l) 10 == 5 || mod (head l) 5 == 5 = konso (head l) (happyFive (tail l))
    | otherwise = happyFive (tail l)