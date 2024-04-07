--menentukan index mahasiswa dalam bentuk list
listIndex :: [Int] -> (Int ->Char) -> [Char]
skor :: Int -> Char
konso :: Char -> [Char] -> [Char]
konso e li = [e] ++ li
listIndex [] f = []
listIndex l f = konso (f (head l)) (listIndex (tail l) f)
skor x = 
    if (x >= 80) && (x <= 100) then 'A'
    else if (x >= 70) && (x < 80) then 'B'
    else if (x >= 65) && (x < 70) then 'C'
    else if (x >= 55) && (x < 65) then 'D'
    else 'E'
