import XCTest
import SwiftMusicTheory
import Foundation

final class ETests: XCTestCase {

  func testETranspositionUp() {
    XCTAssertTrue(Note.e + .unison() == .e)
    XCTAssertTrue(Note.e + .unison(.augmented()) == .e.sharp())
    XCTAssertTrue(Note.e + .unison(.augmented(times: 2)) == .e.sharp(2))
    XCTAssertTrue(Note.e + .unison(.diminished()) == .e.flat())
    XCTAssertTrue(Note.e + .unison(.diminished(times: 2)) == .e.flat(2))

    XCTAssertTrue(Note.e + .second(.minor) == .f)
    XCTAssertTrue(Note.e + .second(.diminished()) == .f.flat())
    XCTAssertTrue(Note.e + .second(.diminished(times: 2)) == .f.flat(2))
    XCTAssertTrue(Note.e + .second(.major) == .f.sharp())
    XCTAssertTrue(Note.e + .second(.augmented()) == .f.sharp(2))
    XCTAssertTrue(Note.e + .second(.augmented(times: 2)) == .f.sharp(3))

    XCTAssertTrue(Note.e + .third(.minor) == .g)
    XCTAssertTrue(Note.e + .third(.diminished()) == .g.flat())
    XCTAssertTrue(Note.e + .third(.diminished(times: 2)) == .g.flat(2))
    XCTAssertTrue(Note.e + .third(.major) == .g.sharp())
    XCTAssertTrue(Note.e + .third(.augmented()) == .g.sharp(2))
    XCTAssertTrue(Note.e + .third(.augmented(times: 2)) == .g.sharp(3))

    XCTAssertTrue(Note.e + .fourth(.perfect) == .a)
    XCTAssertTrue(Note.e + .fourth(.diminished()) == .a.flat())
    XCTAssertTrue(Note.e + .fourth(.diminished(times: 2)) == .a.flat(2))
    XCTAssertTrue(Note.e + .fourth(.augmented()) == .a.sharp())
    XCTAssertTrue(Note.e + .fourth(.augmented(times: 2)) == .a.sharp(2))

    XCTAssertTrue(Note.e + .fifth(.perfect) == .b)
    XCTAssertTrue(Note.e + .fifth(.diminished()) == .b.flat())
    XCTAssertTrue(Note.e + .fifth(.diminished(times: 2)) == .b.flat(2))
    XCTAssertTrue(Note.e + .fifth(.augmented()) == .b.sharp())
    XCTAssertTrue(Note.e + .fifth(.augmented(times: 2)) == .b.sharp(2))

    XCTAssertTrue(Note.e + .sixth(.minor) == .c)
    XCTAssertTrue(Note.e + .sixth(.diminished()) == .c.flat())
    XCTAssertTrue(Note.e + .sixth(.diminished(times: 2)) == .c.flat(2))
    XCTAssertTrue(Note.e + .sixth(.major) == .c.sharp())
    XCTAssertTrue(Note.e + .sixth(.augmented()) == .c.sharp(2))
    XCTAssertTrue(Note.e + .sixth(.augmented(times: 2)) == .c.sharp(3))

    XCTAssertTrue(Note.e + .seventh(.minor) == .d)
    XCTAssertTrue(Note.e + .seventh(.diminished()) == .d.flat())
    XCTAssertTrue(Note.e + .seventh(.diminished(times: 2)) == .d.flat(2))
    XCTAssertTrue(Note.e + .seventh(.major) == .d.sharp())
    XCTAssertTrue(Note.e + .seventh(.augmented()) == .d.sharp(2))
    XCTAssertTrue(Note.e + .seventh(.augmented(times: 2)) == .d.sharp(3))

    XCTAssertTrue(Note.e + .octave() == .e)
    XCTAssertTrue(Note.e + .octave(.augmented()) == .e.sharp())
    XCTAssertTrue(Note.e + .octave(.augmented(times: 2)) == .e.sharp(2))
    XCTAssertTrue(Note.e + .octave(.diminished()) == .e.flat())
    XCTAssertTrue(Note.e + .octave(.diminished(times: 2)) == .e.flat(2))
  }

  func testESharpTranspositionUp() {
    XCTAssertTrue(Note.e.sharp() + .unison() == .e.sharp())
    XCTAssertTrue(Note.e.sharp() + .unison(.augmented()) == .e.sharp(2))
    XCTAssertTrue(Note.e.sharp() + .unison(.augmented(times: 2)) == .e.sharp(3))
    XCTAssertTrue(Note.e.sharp() + .unison(.diminished()) == .e)
    XCTAssertTrue(Note.e.sharp() + .unison(.diminished(times: 2)) == .e.flat())

    XCTAssertTrue(Note.e.sharp() + .second(.minor) == .f.sharp())
    XCTAssertTrue(Note.e.sharp() + .second(.diminished()) == .f)
    XCTAssertTrue(Note.e.sharp() + .second(.diminished(times: 2)) == .f.flat())
    XCTAssertTrue(Note.e.sharp() + .second(.major) == .f.sharp(2))
    XCTAssertTrue(Note.e.sharp() + .second(.augmented()) == .f.sharp(3))
    XCTAssertTrue(Note.e.sharp() + .second(.augmented(times: 2)) == Note(name: .f, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.e.sharp() + .third(.minor) == .g.sharp())
    XCTAssertTrue(Note.e.sharp() + .third(.diminished()) == .g)
    XCTAssertTrue(Note.e.sharp() + .third(.diminished(times: 2)) == .g.flat())
    XCTAssertTrue(Note.e.sharp() + .third(.major) == .g.sharp(2))
    XCTAssertTrue(Note.e.sharp() + .third(.augmented()) == .g.sharp(3))
    XCTAssertTrue(Note.e.sharp() + .third(.augmented(times: 2)) == Note(name: .g, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.e.sharp() + .fourth(.perfect) == .a.sharp())
    XCTAssertTrue(Note.e.sharp() + .fourth(.diminished()) == .a)
    XCTAssertTrue(Note.e.sharp() + .fourth(.augmented()) == .a.sharp(2))
    XCTAssertTrue(Note.e.sharp() + .fourth(.diminished(times: 2)) == .a.flat())
    XCTAssertTrue(Note.e.sharp() + .fourth(.augmented(times: 2)) == .a.sharp(3))

    XCTAssertTrue(Note.e.sharp() + .fifth(.perfect) == .b.sharp())
    XCTAssertTrue(Note.e.sharp() + .fifth(.diminished()) == .b)
    XCTAssertTrue(Note.e.sharp() + .fifth(.augmented()) == .b.sharp(2))
    XCTAssertTrue(Note.e.sharp() + .fifth(.diminished(times: 2)) == .b.flat())
    XCTAssertTrue(Note.e.sharp() + .fifth(.augmented(times: 2)) == .b.sharp(3))

    XCTAssertTrue(Note.e.sharp() + .sixth(.minor) == .c.sharp())
    XCTAssertTrue(Note.e.sharp() + .sixth(.diminished()) == .c)
    XCTAssertTrue(Note.e.sharp() + .sixth(.diminished(times: 2)) == .c.flat())
    XCTAssertTrue(Note.e.sharp() + .sixth(.major) == .c.sharp(2))
    XCTAssertTrue(Note.e.sharp() + .sixth(.augmented()) == .c.sharp(3))
    XCTAssertTrue(Note.e.sharp() + .sixth(.augmented(times: 2)) == Note(name: .c, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.e.sharp() + .seventh(.minor) == .d.sharp())
    XCTAssertTrue(Note.e.sharp() + .seventh(.diminished()) == .d)
    XCTAssertTrue(Note.e.sharp() + .seventh(.diminished(times: 2)) == .d.flat())
    XCTAssertTrue(Note.e.sharp() + .seventh(.major) == .d.sharp(2))
    XCTAssertTrue(Note.e.sharp() + .seventh(.augmented()) == .d.sharp(3))
    XCTAssertTrue(Note.e.sharp() + .seventh(.augmented(times: 2)) == Note(name: .d, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.e.sharp() + .octave() == .e.sharp())
    XCTAssertTrue(Note.e.sharp() + .octave(.augmented()) == .e.sharp(2))
    XCTAssertTrue(Note.e.sharp() + .octave(.diminished()) == .e)
  }

  func testEFlatTranspositionUp() {
    XCTAssertTrue(Note.e.flat() + .unison() == .e.flat())
    XCTAssertTrue(Note.e.flat() + .unison(.augmented()) == .e)
    XCTAssertTrue(Note.e.flat() + .unison(.augmented(times: 2)) == .e.sharp())
    XCTAssertTrue(Note.e.flat() + .unison(.diminished()) == .e.flat(2))
    XCTAssertTrue(Note.e.flat() + .unison(.diminished(times: 2)) == .e.flat(3))

    XCTAssertTrue(Note.e.flat() + .second(.minor) == .f.flat())
    XCTAssertTrue(Note.e.flat() + .second(.diminished()) == .f.flat(2))
    XCTAssertTrue(Note.e.flat() + .second(.diminished(times: 2)) == .f.flat(3))
    XCTAssertTrue(Note.e.flat() + .second(.major) == .f)
    XCTAssertTrue(Note.e.flat() + .second(.augmented()) == .f.sharp())
    XCTAssertTrue(Note.e.flat() + .second(.augmented(times: 2)) == .f.sharp(2))

    XCTAssertTrue(Note.e.flat() + .third(.minor) == .g.flat())
    XCTAssertTrue(Note.e.flat() + .third(.diminished()) == .g.flat(2))
    XCTAssertTrue(Note.e.flat() + .third(.diminished(times: 2)) == .g.flat(3))
    XCTAssertTrue(Note.e.flat() + .third(.major) == .g)
    XCTAssertTrue(Note.e.flat() + .third(.augmented()) == .g.sharp())
    XCTAssertTrue(Note.e.flat() + .third(.augmented(times: 2)) == .g.sharp(2))

    XCTAssertTrue(Note.e.flat() + .fourth(.perfect) == .a.flat())
    XCTAssertTrue(Note.e.flat() + .fourth(.diminished()) == .a.flat(2))
    XCTAssertTrue(Note.e.flat() + .fourth(.diminished(times: 2)) == .a.flat(3))
    XCTAssertTrue(Note.e.flat() + .fourth(.augmented()) == .a)
    XCTAssertTrue(Note.e.flat() + .fourth(.augmented(times: 2)) == .a.sharp())

    XCTAssertTrue(Note.e.flat() + .fifth(.perfect) == .b.flat())
    XCTAssertTrue(Note.e.flat() + .fifth(.diminished()) == .b.flat(2))
    XCTAssertTrue(Note.e.flat() + .fifth(.diminished(times: 2)) == .b.flat(3))
    XCTAssertTrue(Note.e.flat() + .fifth(.augmented()) == .b)
    XCTAssertTrue(Note.e.flat() + .fifth(.augmented(times: 2)) == .b.sharp())

    XCTAssertTrue(Note.e.flat() + .sixth(.minor) == .c.flat())
    XCTAssertTrue(Note.e.flat() + .sixth(.diminished()) == .c.flat(2))
    XCTAssertTrue(Note.e.flat() + .sixth(.diminished(times: 2)) == .c.flat(3))
    XCTAssertTrue(Note.e.flat() + .sixth(.major) == .c)
    XCTAssertTrue(Note.e.flat() + .sixth(.augmented()) == .c.sharp())
    XCTAssertTrue(Note.e.flat() + .sixth(.augmented(times: 2)) == .c.sharp(2))

    XCTAssertTrue(Note.e.flat() + .seventh(.minor) == .d.flat())
    XCTAssertTrue(Note.e.flat() + .seventh(.diminished()) == .d.flat(2))
    XCTAssertTrue(Note.e.flat() + .seventh(.diminished(times: 2)) == .d.flat(3))
    XCTAssertTrue(Note.e.flat() + .seventh(.major) == .d)
    XCTAssertTrue(Note.e.flat() + .seventh(.augmented()) == .d.sharp())
    XCTAssertTrue(Note.e.flat() + .seventh(.augmented(times: 2)) == .d.sharp(2))

    XCTAssertTrue(Note.e.flat() + .octave() == .e.flat())
    XCTAssertTrue(Note.e.flat() + .octave(.augmented()) == .e)
    XCTAssertTrue(Note.e.flat() + .octave(.augmented(times: 2)) == .e.sharp())
    XCTAssertTrue(Note.e.flat() + .octave(.diminished()) == .e.flat(2))
    XCTAssertTrue(Note.e.flat() + .octave(.diminished(times: 2)) == .e.flat(3))
  }
}
