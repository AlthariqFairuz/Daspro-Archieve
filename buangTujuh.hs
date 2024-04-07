--fungsi buangTujuh membuang seluruh angka yang berkaitan dengan 7 (ex: 17 (ada 7) ,21 (kelipatan 7))
buangTujuh :: [Int] -> [Int] 
buangTujuh [] = [] -- jangan lupa basisnya list kosong, karena pas diakhir rekursi, listnya bakalan kosong, setelah list kosong, pakai kons (simbol `:`) agar dimasukkan ke list kosong
buangTujuh l = 
    if (mod (head l) 10 == 7) || (mod (head l) 7 == 0) || (div (head l) 10 == 7) then buangTujuh (tail l) --div gunanya buat angka kyk 71 (7 didepan / ga diakhir) kalau mod kyk 17 (7 diakhir)
    else (head l) : buangTujuh (tail l)

--buangTujuh alternative
buangTujuh2 :: [Int] -> [Int] 
konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
buangTujuh2 [] = []
buangTujuh2 l
    | mod (head l) 7 == 0 = buangTujuh2 (tail l)
    | otherwise = if (mod (head l) 10 == 7) || (div (head l) 10 == 7) then buangTujuh2 (tail l)
                    else konso (head l) (buangTujuh2 (tail l))
