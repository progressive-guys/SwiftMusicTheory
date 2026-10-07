import XCTest
import SwiftMusicTheory
import Foundation

final class GTests: XCTestCase {

  func testGTranspositionUp() {
    XCTAssertTrue(Note.g + .unison() == .g)
    XCTAssertTrue(Note.g + .unison(.augmented()) == .g.sharp())
    XCTAssertTrue(Note.g + .unison(.augmented(times: 2)) == .g.sharp(2))
    XCTAssertTrue(Note.g + .unison(.diminished()) == .g.flat())
    XCTAssertTrue(Note.g + .unison(.diminished(times: 2)) == .g.flat(2))

    XCTAssertTrue(Note.g + .second(.minor) == .a.flat())
    XCTAssertTrue(Note.g + .second(.diminished()) == .a.flat(2))
    XCTAssertTrue(Note.g + .second(.major) == .a)
    XCTAssertTrue(Note.g + .second(.augmented()) == .a.sharp())
    XCTAssertTrue(Note.g + .second(.augmented(times: 2)) == .a.sharp(2))

    XCTAssertTrue(Note.g + .third(.minor) == .b.flat())
    XCTAssertTrue(Note.g + .third(.diminished()) == .b.flat(2))
    XCTAssertTrue(Note.g + .third(.major) == .b)
    XCTAssertTrue(Note.g + .third(.augmented()) == .b.sharp())
    XCTAssertTrue(Note.g + .third(.augmented(times: 2)) == .b.sharp(2))

    XCTAssertTrue(Note.g + .fourth(.perfect) == .c)
    XCTAssertTrue(Note.g + .fourth(.diminished()) == .c.flat())
    XCTAssertTrue(Note.g + .fourth(.augmented()) == .c.sharp())

    XCTAssertTrue(Note.g + .fifth(.perfect) == .d)
    XCTAssertTrue(Note.g + .fifth(.diminished()) == .d.flat())
    XCTAssertTrue(Note.g + .fifth(.augmented()) == .d.sharp())

    XCTAssertTrue(Note.g + .sixth(.minor) == .e.flat())
    XCTAssertTrue(Note.g + .sixth(.diminished()) == .e.flat(2))
    XCTAssertTrue(Note.g + .sixth(.major) == .e)
    XCTAssertTrue(Note.g + .sixth(.augmented()) == .e.sharp())

    XCTAssertTrue(Note.g + .seventh(.minor) == .f)
    XCTAssertTrue(Note.g + .seventh(.diminished()) == .f.flat())
    XCTAssertTrue(Note.g + .seventh(.major) == .f.sharp())
    XCTAssertTrue(Note.g + .seventh(.augmented()) == .f.sharp(2))

    XCTAssertTrue(Note.g + .octave() == .g)
    XCTAssertTrue(Note.g + .octave(.augmented()) == .g.sharp())
    XCTAssertTrue(Note.g + .octave(.diminished()) == .g.flat())
  }

  func testGFlatTranspositionUp() {
    XCTAssertTrue(Note.g.flat() + .unison() == .g.flat())
    XCTAssertTrue(Note.g.flat() + .unison(.augmented()) == .g)
    XCTAssertTrue(Note.g.flat() + .unison(.augmented(times: 2)) == .g.sharp())
    XCTAssertTrue(Note.g.flat() + .unison(.diminished()) == .g.flat(2))
    XCTAssertTrue(Note.g.flat() + .unison(.diminished(times: 2)) == .g.flat(3))

    XCTAssertTrue(Note.g.flat() + .second(.minor) == .a.flat(2))
    XCTAssertTrue(Note.g.flat() + .second(.diminished()) == .a.flat(3))
    XCTAssertTrue(Note.g.flat() + .second(.major) == .a.flat())
    XCTAssertTrue(Note.g.flat() + .second(.augmented()) == .a)
    XCTAssertTrue(Note.g.flat() + .second(.augmented(times: 2)) == .a.sharp())

    XCTAssertTrue(Note.g.flat() + .third(.minor) == .b.flat(2))
    XCTAssertTrue(Note.g.flat() + .third(.diminished()) == .b.flat(3))
    XCTAssertTrue(Note.g.flat() + .third(.major) == .b.flat())
    XCTAssertTrue(Note.g.flat() + .third(.augmented()) == .b)
    XCTAssertTrue(Note.g.flat() + .third(.augmented(times: 2)) == .b.sharp())

    XCTAssertTrue(Note.g.flat() + .fourth(.perfect) == .c.flat())
    XCTAssertTrue(Note.g.flat() + .fourth(.diminished()) == .c.flat(2))
    XCTAssertTrue(Note.g.flat() + .fourth(.augmented()) == .c)

    XCTAssertTrue(Note.g.flat() + .fifth(.perfect) == .d.flat())
    XCTAssertTrue(Note.g.flat() + .fifth(.diminished()) == .d.flat(2))
    XCTAssertTrue(Note.g.flat() + .fifth(.augmented()) == .d)

    XCTAssertTrue(Note.g.flat() + .sixth(.minor) == .e.flat(2))
    XCTAssertTrue(Note.g.flat() + .sixth(.diminished()) == .e.flat(3))
    XCTAssertTrue(Note.g.flat() + .sixth(.major) == .e.flat())
    XCTAssertTrue(Note.g.flat() + .sixth(.augmented()) == .e)

    XCTAssertTrue(Note.g.flat() + .seventh(.minor) == .f.flat())
    XCTAssertTrue(Note.g.flat() + .seventh(.diminished()) == .f.flat(2))
    XCTAssertTrue(Note.g.flat() + .seventh(.major) == .f)
    XCTAssertTrue(Note.g.flat() + .seventh(.augmented()) == .f.sharp())

    XCTAssertTrue(Note.g.flat() + .octave() == .g.flat())
    XCTAssertTrue(Note.g.flat() + .octave(.augmented()) == .g)
    XCTAssertTrue(Note.g.flat() + .octave(.diminished()) == .g.flat(2))
  }

  func testGSharpTranspositionUp() {
    XCTAssertTrue(Note.g.sharp() + .unison() == .g.sharp())
    XCTAssertTrue(Note.g.sharp() + .unison(.augmented()) == .g.sharp(2))
    XCTAssertTrue(Note.g.sharp() + .unison(.augmented(times: 2)) == .g.sharp(3))
    XCTAssertTrue(Note.g.sharp() + .unison(.diminished()) == .g)
    XCTAssertTrue(Note.g.sharp() + .unison(.diminished(times: 2)) == .g.flat())

    XCTAssertTrue(Note.g.sharp() + .second(.minor) == .a)
    XCTAssertTrue(Note.g.sharp() + .second(.diminished()) == .a.flat())
    XCTAssertTrue(Note.g.sharp() + .second(.major) == .a.sharp())
    XCTAssertTrue(Note.g.sharp() + .second(.augmented()) == .a.sharp(2))
    XCTAssertTrue(Note.g.sharp() + .second(.augmented(times: 2)) == .a.sharp(3))

    XCTAssertTrue(Note.g.sharp() + .third(.minor) == .b)
    XCTAssertTrue(Note.g.sharp() + .third(.diminished()) == .b.flat())
    XCTAssertTrue(Note.g.sharp() + .third(.major) == .b.sharp())
    XCTAssertTrue(Note.g.sharp() + .third(.augmented()) == .b.sharp(2))
    XCTAssertTrue(Note.g.sharp() + .third(.augmented(times: 2)) == .b.sharp(3))

    XCTAssertTrue(Note.g.sharp() + .fourth(.perfect) == .c.sharp())
    XCTAssertTrue(Note.g.sharp() + .fourth(.diminished()) == .c)
    XCTAssertTrue(Note.g.sharp() + .fourth(.augmented()) == .c.sharp(2))
    XCTAssertTrue(Note.g.sharp() + .fourth(.augmented(times: 2)) == .c.sharp(3))

    XCTAssertTrue(Note.g.sharp() + .fifth(.perfect) == .d.sharp())
    XCTAssertTrue(Note.g.sharp() + .fifth(.diminished()) == .d)
    XCTAssertTrue(Note.g.sharp() + .fifth(.augmented()) == .d.sharp(2))
    XCTAssertTrue(Note.g.sharp() + .fifth(.augmented(times: 2)) == .d.sharp(3))

    XCTAssertTrue(Note.g.sharp() + .sixth(.minor) == .e)
    XCTAssertTrue(Note.g.sharp() + .sixth(.diminished()) == .e.flat())
    XCTAssertTrue(Note.g.sharp() + .sixth(.major) == .e.sharp())
    XCTAssertTrue(Note.g.sharp() + .sixth(.augmented()) == .e.sharp(2))
    XCTAssertTrue(Note.g.sharp() + .sixth(.augmented(times: 2)) == .e.sharp(3))

    XCTAssertTrue(Note.g.sharp() + .seventh(.minor) == .f.sharp())
    XCTAssertTrue(Note.g.sharp() + .seventh(.diminished()) == .f)
    XCTAssertTrue(Note.g.sharp() + .seventh(.major) == .f.sharp(2))
    XCTAssertTrue(Note.g.sharp() + .seventh(.augmented()) == .f.sharp(3))
    XCTAssertTrue(Note.g.sharp() + .seventh(.augmented(times: 2)) == Note(name: .f, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.g.sharp() + .octave() == .g.sharp())
    XCTAssertTrue(Note.g.sharp() + .octave(.augmented()) == .g.sharp(2))
    XCTAssertTrue(Note.g.sharp() + .octave(.diminished()) == .g)
  }
}
