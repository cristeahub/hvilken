import Data.Time
import Lib
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Prelude.head" $ do
    it "makes sure weekNumberFromDate is less than or equal to 52" $ do
      t <- getCurrentTime
      weekNumberFromDate t `shouldSatisfy` (<= 52)
