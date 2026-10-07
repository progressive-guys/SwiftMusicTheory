import XCTest
import SwiftMusicTheory
import Foundation

final class DiminishedTests: XCTestCase {

  let diminished = Scale.diminished

  func testTriads() {

  }

  func testDegrees() {
    XCTAssertTrue(
      Scale.diminished.functions() ==
      [.tonic(), .second(), .third(.flat), .fourth(), .fourth(.sharp), .fifth(.sharp), .sixth(), .seventh()]
    )
    XCTAssertTrue(
      Scale.diminished.shifted(at: 1).functions() ==
      [.tonic(), .second(.flat), .third(.flat), .third(), .fourth(.sharp), .fifth(), .sixth(), .seventh(.flat)]
    )
  }
}
