import XCTest
import SwiftMusicTheory

final class NoteTests: XCTestCase {

  func testSharpened() async throws {
    XCTAssertTrue(Note.f.sharp().sharp() == .f.sharp(2))
    XCTAssertTrue(Note.f.flat().sharp() == .f)
    XCTAssertTrue(Note.f.flat(2).sharp() == .f.flat())
  }

  func testFlattened() async throws {
    XCTAssertTrue(Note.f.flat().flat() == .f.flat(2))
    XCTAssertTrue(Note.f.sharp().flat() == .f)
    XCTAssertTrue(Note.f.sharp(2).flat() == .f.sharp())
  }

  func testEnharmonisms() async throws {
    XCTAssertTrue(Note.f.flat().diatonicEnharmonism(shifted: -1) == .e)
    XCTAssertTrue(Note.e.sharp().diatonicEnharmonism(shifted: 1) == .f)
    XCTAssertTrue(Note.c.flat().diatonicEnharmonism(shifted: -1) == .b)
    XCTAssertTrue(Note.b.sharp().diatonicEnharmonism(shifted: 1) == .c)

    XCTAssertTrue(Note.c.flat().isEnharmonic(to: .b))
    XCTAssertTrue(Note.f.flat().isEnharmonic(to: .e))
    XCTAssertTrue(Note.e.sharp().isEnharmonic(to: .f))
    XCTAssertTrue(Note.b.sharp().isEnharmonic(to: .c))
  }

  func testCMajorSemitonesCount() async throws {
    let cases: [(Note, Int)] = [
      (Note.c, 0),
      (Note.b.sharp(), 0),
      (Note.c.sharp(), 1),
      (Note.d.flat(), 1),
      (Note.d, 2),
      (Note.d.sharp(), 3),
      (Note.e.flat(), 3),
      (Note.e, 4),
      (Note.f.flat(), 4),
      (Note.f, 5),
      (Note.e.sharp(), 5),
      (Note.f.sharp(), 6),
      (Note.g.flat(), 6),
      (Note.g, 7),
      (Note.g.sharp(), 8),
      (Note.a.flat(), 8),
      (Note.a, 9),
      (Note.a.sharp(), 10),
      (Note.b.flat(), 10),
      (Note.b, 11),
      (Note.c.flat(), 11)
    ]
    for testCase in cases {
      let semitonesCount = testCase.0.semitonesNormalized
      XCTAssertTrue(semitonesCount == testCase.1)
    }
  }

  func testNotations() {
    let c: Note = .c
    let dFlat: Note = .d.flat()

    XCTAssertTrue("\(c.sharp().sharp())" == "C𝄪")
    XCTAssertTrue("\(dFlat)" == "D♭")
    XCTAssertTrue("\(dFlat.sharp())" == "D")
  }
}
