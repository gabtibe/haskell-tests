module Main where

import Lib
import Sorting
import Data.Maybe

main :: IO ()
main = do
  intList <- askUser
  print $ quicksort intList
