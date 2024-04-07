-- menghasilkan kemunculan setiap elemen character hanya sekali jika ia muncul lebih dari sekali
isEmpty :: [Char] -> Bool
isElmt :: Char-> [Char] -> Bool
makeUnique :: [Char] -> [Char]

isEmpty l = null l

isElmt a l 
    | isEmpty l = False -- utk ngecek apakah sama
    | otherwise =
    if a==(head l) then True -- dicek apakah element pertama di list itu sama dengan elemen dibelakangnya
    else isElmt a (tail l) -- kalau ga direkursi sampai habis, kalau ga ada juga yauda kosong

makeUnique l 
    | isEmpty l = [] --hasil jika list kosong
    | isElmt (last l) (init l) = makeUnique (init l) -- kalau head dan tail, ntar kalau misalnya hurufnya sama tapi dibalik (say->yas) ntar yg di print malah yas, karena kita ngedceknya dari depan
    | otherwise = (makeUnique (init l)) ++ [last l] -- karena pas diakhir2 (pas udah tinggal beberapa element doang), itu ga ada yang sama, jadinya itu doang yang di print
    -- no worries, urutannya ga berubah walau kata terakhir dibalik, karena kita letakinnya dibelakang (konsdot) dan juga ngeceknya dari belakang juga