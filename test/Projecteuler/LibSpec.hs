module Projecteuler.LibSpec (spec) where

import Projecteuler.Lib
import Test.Hspec

spec :: Spec
spec = do
  it "isPrime" $ do
    map isPrime [-1, 0, 1, 4, 6] `shouldBe` replicate 5 False
    let primes = [7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
    map isPrime primes `shouldBe` replicate (length primes) True

