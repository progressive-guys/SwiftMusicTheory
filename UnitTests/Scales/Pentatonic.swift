import XCTest
import SwiftMusicTheory
import Foundation

final class PentatonicTests: XCTestCase {

  let pentatonic = Scale.pentatonic

  func testFunctions() {
    XCTAssertTrue(pentatonic.functions() == [.tonic(), .second(), .third(), .fifth(), .sixth()])
    XCTAssertTrue(pentatonic.shifted(at: 4).functions() == [.tonic(), .third(.flat), .fourth(), .fifth(), .seventh(.flat)])
    XCTAssertTrue(pentatonic.shifted(at: 4).functions() == [.tonic(), .third(.flat), .fourth(), .fifth(), .seventh(.flat)])
  }

  func testDegree() {
    XCTAssertTrue(
      pentatonic.shifted(at: 5).chromaticFunction(at: .fifth(.augmented(times: 2)).octaves(3)) == .fifth(.sharpened(times: 2))
    )
  }
}
