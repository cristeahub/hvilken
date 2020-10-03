module Main where

import Lib

main :: IO ()
main = do
  z <- getLine
  someFunc z
