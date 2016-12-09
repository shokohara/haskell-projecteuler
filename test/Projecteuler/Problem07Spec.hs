module Projecteuler.Problem07Spec (spec) where

import Test.Hspec
import Projecteuler.Problem07

spec :: Spec
spec = do
  it "f" $ f 6 `shouldBe` 13

