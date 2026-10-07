import XCTest
import SwiftMusicTheory
import Foundation

final class HarmonicMajorTests: XCTestCase {
  let scale = Scale.harmonicMajor

  func testFunctions() {
    XCTAssertTrue(scale.shifted(at: 1).functions() == [.tonic(), .second(), .third(.flat), .fourth(), .fifth(.flat), .sixth(), .seventh(.flat)])
    XCTAssertTrue(scale.shifted(at: 2).functions() == [.tonic(), .second(.flat), .third(.flat), .fourth(.flat), .fifth(), .sixth(.flat), .seventh(.flat)])
    XCTAssertTrue(scale.shifted(at: 3).functions() == [.tonic(), .second(), .third(.flat), .fourth(.sharp), .fifth(), .sixth(), .seventh()])
    XCTAssertTrue(scale.shifted(at: 4).functions() == [.tonic(), .second(.flat), .third(), .fourth(), .fifth(), .sixth(), .seventh(.flat)])
    XCTAssertTrue(scale.shifted(at: 5).functions() == [.tonic(), .second(.sharp), .third(), .fourth(.sharp), .fifth(.sharp), .sixth(), .seventh()])
    XCTAssertTrue(scale.shifted(at: 6).functions() == [.tonic(), .second(.flat), .third(.flat), .fourth(), .fifth(.flat), .sixth(.flat), .seventh(.flattened(times: 2))])
    XCTAssertTrue(scale.shifted(at: 7).functions() == [.tonic(), .second(), .third(), .fourth(), .fifth(), .sixth(.flat), .seventh()])
  }

  func testTriads() {
    XCTAssertTrue(scale.degrees.flatMap { $0.triads } == [.major, .diminished, .minor, .minor, .major, .augmented, .diminished])
  }
}
