module Projecteuler.Problem10 where

import Projecteuler.Lib (isPrime)

resolve = f 2000000

f :: Integer -> Integer
f x = sum . filter isPrime $ [2..x-1]

