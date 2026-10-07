import XCTest
import SwiftMusicTheory
import Foundation

final class DiatonicTests: XCTestCase {

  let diatonic = Scale.diatonic

  func testTriads() {
    XCTAssertTrue(diatonic.degrees.flatMap { $0.triads } == [.major, .minor, .minor, .major, .major, .minor, .diminished])
    XCTAssertTrue(diatonic.shifted(at: 7).degrees.flatMap { $0.triads } == [.major, .minor, .minor, .major, .major, .minor, .diminished])

    XCTAssertTrue(diatonic.shifted(at: 5).degrees.flatMap { $0.triads } == [.minor, .diminished, .major, .minor, .minor, .major, .major])
  }

  func testModesFormulas() {
    XCTAssertTrue(
      diatonic.shifted(at: 3).degrees.map(\.intervalFromPrevious) ==
      [.second(.major), .second(.major), .second(.major), .second(.minor), .second(.major), .second(.major), .second(.minor)]
    )

    XCTAssertTrue(
      diatonic.degrees.map(\.intervalFromPrevious) ==
      [.second(.major), .second(.major), .second(.minor), .second(.major), .second(.major), .second(.major), .second(.minor)]
    )

    XCTAssertTrue(
      diatonic.shifted(at: 5).degrees.map(\.intervalFromPrevious) ==
      [.second(.major), .second(.minor), .second(.major), .second(.major), .second(.minor), .second(.major), .second(.major)]
    )
  }

  func testFunctions() {
    XCTAssertTrue(diatonic.degrees.map(\.function) == [.tonic(), .second(), .third(), .fourth(), .fifth(), .sixth(), .seventh()])
    XCTAssertTrue(
      diatonic.shifted(at: 5).degrees.map(\.function) == [
        .tonic(), .second(), .third(.flat), .fourth(), .fifth(), .sixth(.flat), .seventh(.flat)
      ]
    )
    XCTAssertTrue(
      diatonic.functions(comparedTo: .diatonic.shifted(at: 5)) ==
      [.tonic(), .second(), .third(.sharp), .fourth(), .fifth(), .sixth(.sharp), .seventh(.sharp)]
    )
    XCTAssertTrue(
      diatonic.functions(comparedTo: diatonic.shifted(at: 5)) ==
      [.tonic(), .second(), .third(.sharp), .fourth(), .fifth(), .sixth(.sharp), .seventh(.sharp)]
    )
  }

  func testDegree() {
    XCTAssertTrue(diatonic.chromaticFunction(at: .octave()) == .tonic())
    XCTAssertTrue(diatonic.chromaticFunction(at: .unison().octaves(1)) == .tonic())
    XCTAssertTrue(diatonic.chromaticFunction(at: .second(.major).octaves(1)) == .second())
    XCTAssertTrue(diatonic.chromaticFunction(at: .second(.augmented()).octaves(1)) == .second(.sharp))
    XCTAssertTrue(diatonic.chromaticFunction(at: .second(.augmented(times: 2)).octaves(1)) == .second(.sharpened(times: 2)))
    XCTAssertTrue(diatonic.chromaticFunction(at: .fifth(.augmented(times: 2)).octaves(3)) == .fifth(.sharpened(times: 2)))
    XCTAssertTrue(diatonic.shifted(at: 5).chromaticFunction(at: .fifth(.augmented(times: 2)).octaves(3)) == .fifth(.sharpened(times: 2)))
  }
}
