import XCTest
@testable import middle
import bottom

class NameListViewTest: XCTestCase {
    func testNames() {
        let names     = [ "a", "b", "c", "d", "e"]
        let blackList = [ "a", "c", "e" ]
        
        let sut = NameListView(names: names, blackListNames: blackList)
        XCTAssertEqual(sut.names, names.reject(blackList.contains))
    }
}
