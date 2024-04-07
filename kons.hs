konso :: Int -> [Int] -> [Int]
konso e li = [e] ++ li -- kita jadikan integer tersebut list, lalu kita pakai ++ untuk menggabungkan list

konsDot :: [Int] -> Int -> [Int]
konsDot li e = li ++ [e] -- sama, kita jadikan integer tersebut list, lalu kita pakai ++ untuk menggabungkan list, bedanya ini dibelakang
isEmpty :: [Int] -> Bool
isEmpty l = null l