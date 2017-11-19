module Lib(askUser) where

import Data.Maybe
import Text.Read(readMaybe)

askUser :: IO [Integer]
askUser = do
            putStrLn "Enter a list of numbers comma separated"
            input <- getLine
            let maybeList = readMaybe input in
              case maybeList of
                Just l -> return l
                Nothing -> askUser