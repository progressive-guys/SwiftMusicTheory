import SwiftMusicTheory
import XCTest

final class StringIndexTests: XCTestCase {
  func testAcceptsNonNegativeValues() {
    for rawValue in [0, 1, 5] {
      XCTAssertTrue(StringInstrument.StringIndex(rawValue: rawValue)?.rawValue == rawValue)
    }
  }

  func testRejectsNegativeValueAndValidatesInstrumentBounds() throws {
    let instrument = StringInstrument()
    let valid = try XCTUnwrap(StringInstrument.StringIndex(rawValue: 5))
    let invalid = try XCTUnwrap(StringInstrument.StringIndex(rawValue: 6))

    XCTAssertTrue(StringInstrument.StringIndex(rawValue: -1) == nil)
    XCTAssertTrue(instrument.contains(valid))
    XCTAssertTrue(!instrument.contains(invalid))
    XCTAssertTrue(instrument.pitch(at: (stringIndex: valid, fret: 0)) != nil)
    XCTAssertTrue(instrument.pitch(at: (stringIndex: invalid, fret: 0)) == nil)
  }
}
