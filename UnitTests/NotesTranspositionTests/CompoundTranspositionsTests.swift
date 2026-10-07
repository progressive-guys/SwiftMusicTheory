import XCTest
import SwiftMusicTheory
import Foundation

final class CompoundTranspositionsTests: XCTestCase {

  func testNotesTransposition() throws {
    XCTAssertTrue(Note.g + .fifth().octaves(1) == Note.d)
    XCTAssertTrue(Note.c + .fifth().inverted.octaves(1) == Note.f)
    XCTAssertTrue(Note.c.flat() + .fifth().inverted.octaves(1) == Note.f.flat())
    XCTAssertTrue(Note.c.flat() + .fourth().octaves(1) == Note.f.flat())
  }
}
