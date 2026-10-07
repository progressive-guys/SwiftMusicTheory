import XCTest
import SwiftMusicTheory
import Foundation

final class ArrayExtensionsTests: XCTestCase {

  func testArrayShifted() throws {
    let array = [0, 1, 2, 3, 4]
    var result = array.shifted(by: 1, in: .right)
    XCTAssertTrue(result == [4, 0, 1, 2, 3])

    result = array.shifted(by: 2, in: .left)
    XCTAssertTrue(result == [2, 3, 4, 0, 1])

    result = array.shifted(by: 5, in: .left)
    XCTAssertTrue(result == [0, 1, 2, 3, 4])

    result = array.shifted(by: 5, in: .right)
    XCTAssertTrue(result == [0, 1, 2, 3, 4])
  }

  func testArrayShift() throws {
    var array = [0, 1, 2, 3, 4]
    var result = array.shift(by: 1, in: .right)
    XCTAssertTrue(array == [4, 0, 1, 2, 3])
    XCTAssertTrue(result == [4])

    result = array.shift(by: 2, in: .left)
    XCTAssertTrue(array == [1, 2, 3, 4, 0])
    XCTAssertTrue(result == [4, 0])
  }
}
