-- menghitung banyaknya elemen dalam list
listofinteger :: [Int] -> Int
listofinteger [] = 0
listofinteger l = 1 + listofinteger (tail l)