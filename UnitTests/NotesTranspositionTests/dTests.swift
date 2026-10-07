import XCTest
import SwiftMusicTheory
import Foundation

final class DTests: XCTestCase {

  func testDTranspositionUp() {
    XCTAssertTrue(Note.d + .unison() == .d)
    XCTAssertTrue(Note.d + .unison(.augmented()) == .d.sharp())
    XCTAssertTrue(Note.d + .unison(.augmented(times: 2)) == .d.sharp(2))
    XCTAssertTrue(Note.d + .unison(.diminished()) == .d.flat())
    XCTAssertTrue(Note.d + .unison(.diminished(times: 2)) == .d.flat(2))

    XCTAssertTrue(Note.d + .second(.minor) == .e.flat())
    XCTAssertTrue(Note.d + .second(.diminished()) == .e.flat(2))
    XCTAssertTrue(Note.d + .second(.diminished(times: 2)) == .e.flat(3))
    XCTAssertTrue(Note.d + .second(.major) == .e)
    XCTAssertTrue(Note.d + .second(.augmented()) == .e.sharp())
    XCTAssertTrue(Note.d + .second(.augmented(times: 2)) == .e.sharp(2))

    XCTAssertTrue(Note.d + .third(.minor) == .f)
    XCTAssertTrue(Note.d + .third(.diminished()) == .f.flat())
    XCTAssertTrue(Note.d + .third(.diminished(times: 2)) == .f.flat(2))
    XCTAssertTrue(Note.d + .third(.major) == .f.sharp())
    XCTAssertTrue(Note.d + .third(.augmented()) == .f.sharp(2))
    XCTAssertTrue(Note.d + .third(.augmented(times: 2)) == .f.sharp(3))

    XCTAssertTrue(Note.d + .fourth(.perfect) == .g)
    XCTAssertTrue(Note.d + .fourth(.diminished()) == .g.flat())
    XCTAssertTrue(Note.d + .fourth(.diminished(times: 2)) == .g.flat(2))
    XCTAssertTrue(Note.d + .fourth(.augmented()) == .g.sharp())
    XCTAssertTrue(Note.d + .fourth(.augmented(times: 2)) == .g.sharp(2))

    XCTAssertTrue(Note.d + .fifth(.perfect) == .a)
    XCTAssertTrue(Note.d + .fifth(.diminished()) == .a.flat())
    XCTAssertTrue(Note.d + .fifth(.diminished(times: 2)) == .a.flat(2))
    XCTAssertTrue(Note.d + .fifth(.augmented()) == .a.sharp())
    XCTAssertTrue(Note.d + .fifth(.augmented(times: 2)) == .a.sharp(2))

    XCTAssertTrue(Note.d + .sixth(.minor) == .b.flat())
    XCTAssertTrue(Note.d + .sixth(.diminished()) == .b.flat(2))
    XCTAssertTrue(Note.d + .sixth(.diminished(times: 2)) == .b.flat(3))
    XCTAssertTrue(Note.d + .sixth(.major) == .b)
    XCTAssertTrue(Note.d + .sixth(.augmented()) == .b.sharp())
    XCTAssertTrue(Note.d + .sixth(.augmented(times: 2)) == .b.sharp(2))

    XCTAssertTrue(Note.d + .seventh(.minor) == .c)
    XCTAssertTrue(Note.d + .seventh(.diminished()) == .c.flat())
    XCTAssertTrue(Note.d + .seventh(.diminished(times: 2)) == .c.flat(2))
    XCTAssertTrue(Note.d + .seventh(.major) == .c.sharp())
    XCTAssertTrue(Note.d + .seventh(.augmented()) == .c.sharp(2))
    XCTAssertTrue(Note.d + .seventh(.augmented(times: 2)) == .c.sharp(3))

    XCTAssertTrue(Note.d + .octave() == .d)
    XCTAssertTrue(Note.d + .octave(.augmented()) == .d.sharp())
    XCTAssertTrue(Note.d + .octave(.augmented(times: 2)) == .d.sharp(2))
    XCTAssertTrue(Note.d + .octave(.diminished()) == .d.flat())
    XCTAssertTrue(Note.d + .octave(.diminished(times: 2)) == .d.flat(2))
  }

  func testDSharpTranspositionUpForDSharp() {
    XCTAssertTrue(Note.d.sharp() + .unison() == .d.sharp())
    XCTAssertTrue(Note.d.sharp() + .unison(.augmented()) == .d.sharp(2))
    XCTAssertTrue(Note.d.sharp() + .unison(.augmented(times: 2)) == .d.sharp(3))
    XCTAssertTrue(Note.d.sharp() + .unison(.diminished()) == .d)
    XCTAssertTrue(Note.d.sharp() + .unison(.diminished(times: 2)) == .d.flat())

    XCTAssertTrue(Note.d.sharp() + .second(.major) == .e.sharp())
    XCTAssertTrue(Note.d.sharp() + .second(.minor) == .e)
    XCTAssertTrue(Note.d.sharp() + .second(.diminished()) == .e.flat())
    XCTAssertTrue(Note.d.sharp() + .second(.diminished(times: 2)) == .e.flat(2))
    XCTAssertTrue(Note.d.sharp() + .second(.augmented()) == .e.sharp(2))
    XCTAssertTrue(Note.d.sharp() + .second(.augmented(times: 2)) == .e.sharp(3))

    XCTAssertTrue(Note.d.sharp() + .third(.major) == .f.sharp(2))
    XCTAssertTrue(Note.d.sharp() + .third(.minor) == .f.sharp())
    XCTAssertTrue(Note.d.sharp() + .third(.diminished()) == .f)
    XCTAssertTrue(Note.d.sharp() + .third(.diminished(times: 2)) == .f.flat())
    XCTAssertTrue(Note.d.sharp() + .third(.augmented()) == .f.sharp(3))
    XCTAssertTrue(Note.d.sharp() + .third(.augmented(times: 2)) == Note(name: .f, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.d.sharp() + .fourth(.perfect) == .g.sharp())
    XCTAssertTrue(Note.d.sharp() + .fourth(.diminished()) == .g)
    XCTAssertTrue(Note.d.sharp() + .fourth(.diminished(times: 2)) == .g.flat())
    XCTAssertTrue(Note.d.sharp() + .fourth(.augmented()) == .g.sharp(2))
    XCTAssertTrue(Note.d.sharp() + .fourth(.augmented(times: 2)) == .g.sharp(3))

    XCTAssertTrue(Note.d.sharp() + .fifth(.perfect) == .a.sharp())
    XCTAssertTrue(Note.d.sharp() + .fifth(.diminished()) == .a)
    XCTAssertTrue(Note.d.sharp() + .fifth(.diminished(times: 2)) == .a.flat())
    XCTAssertTrue(Note.d.sharp() + .fifth(.augmented()) == .a.sharp(2))
    XCTAssertTrue(Note.d.sharp() + .fifth(.augmented(times: 2)) == .a.sharp(3))

    XCTAssertTrue(Note.d.sharp() + .sixth(.major) == .b.sharp())
    XCTAssertTrue(Note.d.sharp() + .sixth(.minor) == .b)
    XCTAssertTrue(Note.d.sharp() + .sixth(.diminished()) == .b.flat())
    XCTAssertTrue(Note.d.sharp() + .sixth(.diminished(times: 2)) == .b.flat(2))
    XCTAssertTrue(Note.d.sharp() + .sixth(.augmented()) == .b.sharp(2))
    XCTAssertTrue(Note.d.sharp() + .sixth(.augmented(times: 2)) == .b.sharp(3))

    XCTAssertTrue(Note.d.sharp() + .seventh(.major) == .c.sharp(2))
    XCTAssertTrue(Note.d.sharp() + .seventh(.minor) == .c.sharp())
    XCTAssertTrue(Note.d.sharp() + .seventh(.diminished()) == .c)
    XCTAssertTrue(Note.d.sharp() + .seventh(.diminished(times: 2)) == .c.flat())
    XCTAssertTrue(Note.d.sharp() + .seventh(.augmented()) == .c.sharp(3))
    XCTAssertTrue(Note.d.sharp() + .seventh(.augmented(times: 2)) == Note(name: .c, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.d.sharp() + .octave() == .d.sharp())
    XCTAssertTrue(Note.d.sharp() + .octave(.augmented()) == .d.sharp(2))
    XCTAssertTrue(Note.d.sharp() + .octave(.augmented(times: 2)) == .d.sharp(3))
    XCTAssertTrue(Note.d.sharp() + .octave(.diminished()) == .d)
    XCTAssertTrue(Note.d.sharp() + .octave(.diminished(times: 2)) == .d.flat())
  }

  func testDFlatTranspositionUp() {
    XCTAssertTrue(Note.d.flat() + .unison() == .d.flat())
    XCTAssertTrue(Note.d.flat() + .unison(.augmented()) == .d)
    XCTAssertTrue(Note.d.flat() + .unison(.augmented(times: 2)) == .d.sharp())
    XCTAssertTrue(Note.d.flat() + .unison(.diminished()) == .d.flat(2))
    XCTAssertTrue(Note.d.flat() + .unison(.diminished(times: 2)) == Note(name: .d, accidental: .flattened(times: 3)))

    XCTAssertTrue(Note.d.flat() + .second(.minor) == .e.flat(2))
    XCTAssertTrue(Note.d.flat() + .second(.diminished()) == Note(name: .e, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.d.flat() + .second(.major) == .e.flat())
    XCTAssertTrue(Note.d.flat() + .second(.augmented()) == .e)
    XCTAssertTrue(Note.d.flat() + .second(.augmented(times: 2)) == .e.sharp())

    XCTAssertTrue(Note.d.flat() + .third(.minor) == .f.flat())
    XCTAssertTrue(Note.d.flat() + .third(.diminished()) == .f.flat(2))
    XCTAssertTrue(Note.d.flat() + .third(.major) == .f)
    XCTAssertTrue(Note.d.flat() + .third(.augmented()) == .f.sharp())
    XCTAssertTrue(Note.d.flat() + .third(.augmented(times: 2)) == .f.sharp(2))

    XCTAssertTrue(Note.d.flat() + .fourth(.perfect) == .g.flat())
    XCTAssertTrue(Note.d.flat() + .fourth(.diminished()) == .g.flat(2))
    XCTAssertTrue(Note.d.flat() + .fourth(.augmented()) == .g)
    XCTAssertTrue(Note.d.flat() + .fourth(.augmented(times: 2)) == .g.sharp())

    XCTAssertTrue(Note.d.flat() + .fifth(.perfect) == .a.flat())
    XCTAssertTrue(Note.d.flat() + .fifth(.diminished()) == .a.flat(2))
    XCTAssertTrue(Note.d.flat() + .fifth(.augmented()) == .a)
    XCTAssertTrue(Note.d.flat() + .fifth(.augmented(times: 2)) == .a.sharp())

    XCTAssertTrue(Note.d.flat() + .sixth(.minor) == .b.flat(2))
    XCTAssertTrue(Note.d.flat() + .sixth(.diminished()) == Note(name: .b, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.d.flat() + .sixth(.major) == .b.flat())
    XCTAssertTrue(Note.d.flat() + .sixth(.augmented()) == .b)
    XCTAssertTrue(Note.d.flat() + .sixth(.augmented(times: 2)) == .b.sharp())

    XCTAssertTrue(Note.d.flat() + .seventh(.minor) == .c.flat())
    XCTAssertTrue(Note.d.flat() + .seventh(.diminished()) == .c.flat(2))
    XCTAssertTrue(Note.d.flat() + .seventh(.major) == .c)
    XCTAssertTrue(Note.d.flat() + .seventh(.augmented()) == .c.sharp())
    XCTAssertTrue(Note.d.flat() + .seventh(.augmented(times: 2)) == .c.sharp(2))

    XCTAssertTrue(Note.d.flat() + .octave() == .d.flat())
    XCTAssertTrue(Note.d.flat() + .octave(.augmented()) == .d)
    XCTAssertTrue(Note.d.flat() + .octave(.augmented(times: 2)) == .d.sharp())
    XCTAssertTrue(Note.d.flat() + .octave(.diminished()) == .d.flat(2))
    XCTAssertTrue(Note.d.flat() + .octave(.diminished(times: 2)) == Note(name: .d, accidental: .flattened(times: 3)))
  }
}
