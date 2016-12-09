module Projecteuler.Problem10Spec (spec) where

import Projecteuler.Problem10
import Test.Hspec

spec :: Spec
spec = it "f" $ f 10 `shouldBe` 17

