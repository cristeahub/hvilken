module Main where

import Data.Time
import Lib
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  case args of
    ["help"] -> help
    ["-help"] -> help
    ["--help"] -> help
    _ -> main' args

help :: IO ()
help = putStrLn "No input will print current week number"

main' :: [String] -> IO ()
main' args = do
  -- TODO: provide date and show week number for date
  -- Ignore for now
  t <- getCurrentTime
  putStrLn $ show $ weekNumberFromDate t
