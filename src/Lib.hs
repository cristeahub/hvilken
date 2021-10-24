module Lib
  ( weekNumberFromDate,
  )
where

import Data.Time
import Data.Time.Calendar.WeekDate (toWeekDate)
import RIO

weekNumberFromDate :: UTCTime -> Int
weekNumberFromDate date = case toWeekDate $ utctDay date of
  (_, w, _) -> w
