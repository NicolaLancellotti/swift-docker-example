import XCTest
import Library

final class LibraryTests: XCTestCase {
    func testLibrary() throws {
      let value = 2
      let result = identity(value)
      XCTAssertEqual(result, value)
    }
}
