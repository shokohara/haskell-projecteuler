module Main where

import Data.Map (Map)
import qualified Data.Map as Map
import qualified Projecteuler.Problem01 as P01
import qualified Projecteuler.Problem02 as P02
import System.Environment (getArgs)
import System.Exit (exitFailure)

solutions :: Map Integer Integer
solutions = Map.fromList [
                           (1, P01.resolve)
                         , (2, P02.resolve)
                         ]

solution :: Integer -> Maybe Integer
solution = flip Map.lookup solutions

main :: IO ()
main = do
  args <- getArgs
  case args of
    [number] -> case solution (read number :: Integer) of
      Just v -> print v
      Nothing -> putStrLn "There is no solution yet for this problem"
    _ -> usage >> exitFailure
  where
    usage = putStrLn "Usage: stack runghc app/Main.hs [number]"

