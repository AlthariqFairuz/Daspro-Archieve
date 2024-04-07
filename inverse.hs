-- inverse list of cbharacter
inverse :: [Char] -> [Char]
kons :: Char -> [Char] -> [Char]
konsDot :: Char -> [Char] -> [Char]
konsDot e l = l ++ [e]
kons a l = [a] ++ l
inverse [] = []
inverse l = konsDot (head l) (inverse (tail l)) 