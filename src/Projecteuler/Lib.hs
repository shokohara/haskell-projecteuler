module Projecteuler.Lib where

isPrime :: Integer -> Bool
isPrime n
  | n < 2 = False
  | n == 2 = True
  | even n = False
  | otherwise = all (\v -> n `mod` v /= 0) [3, 5..n-1]

--tarai :: Int -> Int -> Int -> Int
--tarai x y z = if x <= y then y else tarai (tarai (x - 1) y z) (tarai (y - 1) z x) (tarai (z - 1) x y)

listPrime :: Integer -> [Integer]
listPrime x = f [2..x] []
  where
    f :: Integer -> Integer -> [Integer]
    f n p = 2 : f [
    f n p = ps : f (filter (\v -> v `mod` (head ps) /= 0) xs) ps

