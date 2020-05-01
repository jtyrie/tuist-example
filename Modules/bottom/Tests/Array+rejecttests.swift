
import bottom
import XCTest

class ArrayRejectTests: XCTestCase {
    func testReject() {
        let sut = [ "a", "b", "c" ].reject { $0 == "b" }
        XCTAssertEqual(sut, [ "a", "c" ])
    }
}
