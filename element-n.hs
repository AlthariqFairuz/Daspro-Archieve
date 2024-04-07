-- MENCARI ELEMENT KE-N DARI SUATU LIST DENGAN ASUMSI LIST TIDAK KOSONG DAN BUKAN INDEX KE-0
elmtN :: [Int] -> Int -> Int
elmtN l 1 = (head l)
elmtN l n = elmtN (tail l) (n-1)
