module Lib
  ( weekNumberFromDate,
  )
where

import Data.Time

weekNumberFromDate :: UTCTime -> String
weekNumberFromDate = show . utctDay
