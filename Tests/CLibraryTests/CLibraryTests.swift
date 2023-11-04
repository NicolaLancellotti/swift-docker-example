import XCTest
import CLibrary

final class CLibraryTests: XCTestCase {
  func testCLibrary() throws {
    let value: Int16 = 2
    let result = int16Identity(value)
    XCTAssertEqual(result, value)
  }
}
