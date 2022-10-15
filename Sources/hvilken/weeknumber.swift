import Foundation

extension Date {
    func weekNumber() -> Int {
        let c = Calendar.current
        return c.component(.weekOfYear, from: self)
    }
}
