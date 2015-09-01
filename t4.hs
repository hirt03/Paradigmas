--1

squareList :: [Int] -> [Int]

squareList [] = []

squareList (x:xs) = x^2 : squareList xs




--2

innList :: Char -> String -> Bool

innList y [] = False

innList y (x:xs) = if (x == y)
   then True
   else innList y xs




--3

semVogais :: String -> String

semVogais [] = []

semVogais (x:xs)
   |x == 'a' = semVogais xs
   |x == 'e' = semVogais xs
   |x == 'i' = semVogais xs
   |x == 'o' = semVogais xs
   |x == 'u' = semVogais xs
   |otherwise = x : semVogais xs




--4

somaCoord :: [(Double, Double)] -> [(Double, Double)]

somaCoord [] = []

somaCoord (x:xs) = (fst(x) + 2,snd(x) + 2):somaCoord xs




--5

geraTab :: Int -> [(Int, Int)]
geraTab x = aux 0 x

aux :: Int -> Int -> [(Int, Int)]
aux x y = if(y>=x)
   then (x, x^2) : aux(x+1) y
   else []