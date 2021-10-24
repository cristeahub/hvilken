{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import Data.Time
import Lib (weekNumberFromDate)
import Options.Generic
import RIO
import Prelude (putStrLn)

data Options w = Options
  { version :: w ::: Bool <?> "Display version information"
  }
  deriving (Generic)

instance ParseRecord (Options Wrapped)

deriving instance Show (Options Wrapped)

main :: IO ()
main = do
  opts <- unwrapRecord "hvilken"
  when (version opts) $ do
    putStrLn "hvilken version: 0.1.0.0"
    exitSuccess

  t <- getCurrentTime
  putStrLn $ show $ weekNumberFromDate t
