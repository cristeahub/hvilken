import XCTest
@testable import hvilken

final class hvilkenTests: XCTestCase {
    func testWeekNumberExtension() throws {
        XCTAssertNotNil(Date().weekNumber())
    }
}
