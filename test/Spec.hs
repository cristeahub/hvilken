import Data.Time
import Lib

main :: IO ()
main = do
  -- quickCheck weekNumberFromDate
  t <- getCurrentTime
  putStrLn ""
  putStrLn $ if weekNumberFromDate t <= 52 then "OK" else "FAIL!"
  return ()
