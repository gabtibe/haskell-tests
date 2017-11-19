factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Brian"
charName 'c' = "Cecile"

firstLetter :: String -> String
firstLetter "" = "Empty String!!"
firstLetter all@(x:xs) = "First letter of " ++ all ++ " is " ++ [x]

bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <= skinny = "Underweight"
    | bmi <= normal = "Looking Good, Looking Good!!"
    | bmi <= over = "Overweight"
    | otherwise  = "Obese"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          over = 30.0

calcBMIs :: [(Double, Double)] -> [Double]
calcBMIs xs = [bmi w h | (w,h) <- xs]
	where bmi weight height = weight / height ^ 2

cylinder :: Double -> Double -> Double
cylinder r h = 
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
        pi = 3.14
    in sideArea + 2 * topArea

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate' :: Int -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x : replicate' (n - 1) x

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = [(x,y)] ++ zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = elem' a xs

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

collatzChain :: Integer -> [Integer]
collatzChain 1 = [1]
collatzChain n
  | even n = n:collatzChain (n `div` 2)
  | otherwise = n:collatzChain (3 * n + 1)