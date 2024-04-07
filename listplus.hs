-- menjumlahkan elemen yang urutannya sama dalam list yang sama panjang
listplus :: [Int] -> [Int] -> [Int]
listplus [] [] = []
listplus l1 l2 = (head l1) + (head l2) : listplus (tail l1) (tail l2)