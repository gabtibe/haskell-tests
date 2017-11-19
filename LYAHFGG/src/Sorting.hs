module Sorting(quicksort) where

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort smaller ++ [x] ++ quicksort bigger
  where smaller = [el | el <- xs, el <= x]
        bigger = [el | el <- xs, el > x]