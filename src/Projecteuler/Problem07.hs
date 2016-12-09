module Projecteuler.Problem07 where

import Projecteuler.Lib

resolve = f 10001

f :: Int -> Integer
f x = last . take x . filter isPrime $ [2..]

