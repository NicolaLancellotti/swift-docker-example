import XCTest

#if !os(Linux)
import CXXLibrary

final class CXXLibraryTests: XCTestCase {
  func testCXXLibrary() throws {
    do {
      let value: Int32 = 2
      let result = int32Identity(value)
      XCTAssertEqual(result, value)
    }
    do {
      let value: Int64 = 2
      let result = int64Identity(value)
      XCTAssertEqual(result, value)
    }
  }
}
#endif
