import Data.Time
import Data.Time.Calendar
import Lib
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Prelude.head" $ do
    it "Week number 53" $
      let t = UTCTime (fromGregorian 2009 12 31) (secondsToDiffTime 0)
       in weekNumberFromDate t `shouldSatisfy` (== 53)

    it "Week number 52" $
      let t = UTCTime (fromGregorian 2011 12 31) (secondsToDiffTime 0)
       in weekNumberFromDate t `shouldSatisfy` (== 52)

    it "Week number 1" $
      let t = UTCTime (fromGregorian 2007 12 31) (secondsToDiffTime 0)
       in weekNumberFromDate t `shouldSatisfy` (== 1)

    it "Random week number less than or equal 53" $ do
      t <- getCurrentTime
      weekNumberFromDate t `shouldSatisfy` (<= 53)
