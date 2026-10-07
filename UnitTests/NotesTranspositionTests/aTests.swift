import XCTest
import SwiftMusicTheory
import Foundation

final class ATests: XCTestCase {
  func testATranspositionUp() {
    XCTAssertTrue(Note.a + .unison() == .a)
    XCTAssertTrue(Note.a + .unison(.augmented()) == .a.sharp())
    XCTAssertTrue(Note.a + .unison(.augmented(times: 2)) == .a.sharp(2))
    XCTAssertTrue(Note.a + .unison(.diminished()) == .a.flat())
    XCTAssertTrue(Note.a + .unison(.diminished(times: 2)) == .a.flat(2))

    XCTAssertTrue(Note.a + .second(.minor) == .b.flat())
    XCTAssertTrue(Note.a + .second(.diminished()) == .b.flat(2))
    XCTAssertTrue(Note.a + .second(.major) == .b)
    XCTAssertTrue(Note.a + .second(.augmented()) == .b.sharp())
    XCTAssertTrue(Note.a + .second(.augmented(times: 2)) == .b.sharp(2))

    XCTAssertTrue(Note.a + .third(.minor) == .c)
    XCTAssertTrue(Note.a + .third(.diminished()) == .c.flat())
    XCTAssertTrue(Note.a + .third(.major) == .c.sharp())
    XCTAssertTrue(Note.a + .third(.augmented()) == .c.sharp(2))
    XCTAssertTrue(Note.a + .third(.augmented(times: 2)) == .c.sharp(3))

    XCTAssertTrue(Note.a + .fourth(.perfect) == .d)
    XCTAssertTrue(Note.a + .fourth(.diminished()) == .d.flat())
    XCTAssertTrue(Note.a + .fourth(.augmented()) == .d.sharp())
    XCTAssertTrue(Note.a + .fourth(.augmented(times: 2)) == .d.sharp(2))

    XCTAssertTrue(Note.a + .fifth(.perfect) == .e)
    XCTAssertTrue(Note.a + .fifth(.diminished()) == .e.flat())
    XCTAssertTrue(Note.a + .fifth(.augmented()) == .e.sharp())
    XCTAssertTrue(Note.a + .fifth(.augmented(times: 2)) == .e.sharp(2))

    XCTAssertTrue(Note.a + .sixth(.minor) == .f)
    XCTAssertTrue(Note.a + .sixth(.diminished()) == .f.flat())
    XCTAssertTrue(Note.a + .sixth(.major) == .f.sharp())
    XCTAssertTrue(Note.a + .sixth(.augmented()) == .f.sharp(2))
    XCTAssertTrue(Note.a + .sixth(.augmented(times: 2)) == .f.sharp(3))

    XCTAssertTrue(Note.a + .seventh(.minor) == .g)
    XCTAssertTrue(Note.a + .seventh(.diminished()) == .g.flat())
    XCTAssertTrue(Note.a + .seventh(.major) == .g.sharp())
    XCTAssertTrue(Note.a + .seventh(.augmented()) == .g.sharp(2))
    XCTAssertTrue(Note.a + .seventh(.augmented(times: 2)) == .g.sharp(3))

    XCTAssertTrue(Note.a + .octave() == .a)
    XCTAssertTrue(Note.a + .octave(.augmented()) == .a.sharp())
    XCTAssertTrue(Note.a + .octave(.diminished()) == .a.flat())
  }

  func testAFlatTranspositionUp() {
    XCTAssertTrue(Note.a.flat() + .unison() == .a.flat())
    XCTAssertTrue(Note.a.flat() + .unison(.augmented()) == .a)
    XCTAssertTrue(Note.a.flat() + .unison(.augmented(times: 2)) == .a.sharp())
    XCTAssertTrue(Note.a.flat() + .unison(.diminished()) == .a.flat(2))
    XCTAssertTrue(Note.a.flat() + .unison(.diminished(times: 2)) == .a.flat(3))

    XCTAssertTrue(Note.a.flat() + .second(.minor) == .b.flat(2))
    XCTAssertTrue(Note.a.flat() + .second(.diminished()) == .b.flat(3))
    XCTAssertTrue(Note.a.flat() + .second(.major) == .b.flat())
    XCTAssertTrue(Note.a.flat() + .second(.augmented()) == .b)
    XCTAssertTrue(Note.a.flat() + .second(.augmented(times: 2)) == .b.sharp())

    XCTAssertTrue(Note.a.flat() + .third(.minor) == .c.flat())
    XCTAssertTrue(Note.a.flat() + .third(.diminished()) == .c.flat(2))
    XCTAssertTrue(Note.a.flat() + .third(.major) == .c)
    XCTAssertTrue(Note.a.flat() + .third(.augmented()) == .c.sharp())
    XCTAssertTrue(Note.a.flat() + .third(.augmented(times: 2)) == .c.sharp(2))

    XCTAssertTrue(Note.a.flat() + .fourth(.perfect) == .d.flat())
    XCTAssertTrue(Note.a.flat() + .fourth(.diminished()) == .d.flat(2))
    XCTAssertTrue(Note.a.flat() + .fourth(.augmented()) == .d)
    XCTAssertTrue(Note.a.flat() + .fourth(.augmented(times: 2)) == .d.sharp())

    XCTAssertTrue(Note.a.flat() + .fifth(.perfect) == .e.flat())
    XCTAssertTrue(Note.a.flat() + .fifth(.diminished()) == .e.flat(2))
    XCTAssertTrue(Note.a.flat() + .fifth(.augmented()) == .e)
    XCTAssertTrue(Note.a.flat() + .fifth(.augmented(times: 2)) == .e.sharp())

    XCTAssertTrue(Note.a.flat() + .sixth(.minor) == .f.flat())
    XCTAssertTrue(Note.a.flat() + .sixth(.diminished()) == .f.flat(2))
    XCTAssertTrue(Note.a.flat() + .sixth(.major) == .f)
    XCTAssertTrue(Note.a.flat() + .sixth(.augmented()) == .f.sharp())
    XCTAssertTrue(Note.a.flat() + .sixth(.augmented(times: 2)) == .f.sharp(2))

    XCTAssertTrue(Note.a.flat() + .seventh(.minor) == .g.flat())
    XCTAssertTrue(Note.a.flat() + .seventh(.diminished()) == .g.flat(2))
    XCTAssertTrue(Note.a.flat() + .seventh(.major) == .g)
    XCTAssertTrue(Note.a.flat() + .seventh(.augmented()) == .g.sharp())
    XCTAssertTrue(Note.a.flat() + .seventh(.augmented(times: 2)) == .g.sharp(2))

    XCTAssertTrue(Note.a.flat() + .octave() == .a.flat())
    XCTAssertTrue(Note.a.flat() + .octave(.augmented()) == .a)
    XCTAssertTrue(Note.a.flat() + .octave(.diminished()) == .a.flat(2))
  }

  func testASharpTranspositionUp() {
    XCTAssertTrue(Note.a.sharp() + .unison() == .a.sharp())
    XCTAssertTrue(Note.a.sharp() + .unison(.augmented()) == .a.sharp(2))
    XCTAssertTrue(Note.a.sharp() + .unison(.augmented(times: 2)) == .a.sharp(3))
    XCTAssertTrue(Note.a.sharp() + .unison(.diminished()) == .a)
    XCTAssertTrue(Note.a.sharp() + .unison(.diminished(times: 2)) == .a.flat())

    XCTAssertTrue(Note.a.sharp() + .second(.minor) == .b)
    XCTAssertTrue(Note.a.sharp() + .second(.diminished()) == .b.flat())
    XCTAssertTrue(Note.a.sharp() + .second(.major) == .b.sharp())
    XCTAssertTrue(Note.a.sharp() + .second(.augmented()) == .b.sharp(2))
    XCTAssertTrue(Note.a.sharp() + .second(.augmented(times: 2)) == .b.sharp(3))

    XCTAssertTrue(Note.a.sharp() + .third(.minor) == .c.sharp())
    XCTAssertTrue(Note.a.sharp() + .third(.diminished()) == .c)
    XCTAssertTrue(Note.a.sharp() + .third(.major) == .c.sharp(2))
    XCTAssertTrue(Note.a.sharp() + .third(.augmented()) == .c.sharp(3))
    XCTAssertTrue(Note.a.sharp() + .third(.augmented(times: 2)) == Note(name: .c, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.a.sharp() + .fourth(.perfect) == .d.sharp())
    XCTAssertTrue(Note.a.sharp() + .fourth(.diminished()) == .d)
    XCTAssertTrue(Note.a.sharp() + .fourth(.augmented()) == .d.sharp(2))
    XCTAssertTrue(Note.a.sharp() + .fourth(.augmented(times: 2)) == .d.sharp(3))

    XCTAssertTrue(Note.a.sharp() + .fifth(.perfect) == .e.sharp())
    XCTAssertTrue(Note.a.sharp() + .fifth(.diminished()) == .e)
    XCTAssertTrue(Note.a.sharp() + .fifth(.augmented()) == .e.sharp(2))
    XCTAssertTrue(Note.a.sharp() + .fifth(.augmented(times: 2)) == .e.sharp(3))

    XCTAssertTrue(Note.a.sharp() + .sixth(.minor) == .f.sharp())
    XCTAssertTrue(Note.a.sharp() + .sixth(.diminished()) == .f)
    XCTAssertTrue(Note.a.sharp() + .sixth(.major) == .f.sharp(2))
    XCTAssertTrue(Note.a.sharp() + .sixth(.augmented()) == .f.sharp(3))
    XCTAssertTrue(Note.a.sharp() + .sixth(.augmented(times: 2)) == Note(name: .f, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.a.sharp() + .seventh(.minor) == .g.sharp())
    XCTAssertTrue(Note.a.sharp() + .seventh(.diminished()) == .g)
    XCTAssertTrue(Note.a.sharp() + .seventh(.major) == .g.sharp(2))
    XCTAssertTrue(Note.a.sharp() + .seventh(.augmented()) == .g.sharp(3))
    XCTAssertTrue(Note.a.sharp() + .seventh(.augmented(times: 2)) == Note(name: .g, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.a.sharp() + .octave() == .a.sharp())
    XCTAssertTrue(Note.a.sharp() + .octave(.augmented()) == .a.sharp(2))
    XCTAssertTrue(Note.a.sharp() + .octave(.diminished()) == .a)

  }
}
