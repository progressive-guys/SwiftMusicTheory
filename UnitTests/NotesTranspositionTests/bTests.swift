import XCTest
import SwiftMusicTheory
import Foundation

final class BTests: XCTestCase {

  func testBTranspositionUp() {
    XCTAssertTrue(Note.b + .unison() == .b)
    XCTAssertTrue(Note.b + .unison(.augmented()) == .b.sharp())
    XCTAssertTrue(Note.b + .unison(.augmented(times: 2)) == .b.sharp(2))
    XCTAssertTrue(Note.b + .unison(.diminished()) == .b.flat())
    XCTAssertTrue(Note.b + .unison(.diminished(times: 2)) == .b.flat(2))

    XCTAssertTrue(Note.b + .second(.minor) == .c)
    XCTAssertTrue(Note.b + .second(.diminished()) == .c.flat())
    XCTAssertTrue(Note.b + .second(.major) == .c.sharp())
    XCTAssertTrue(Note.b + .second(.augmented()) == .c.sharp(2))
    XCTAssertTrue(Note.b + .second(.augmented(times: 2)) == .c.sharp(3))

    XCTAssertTrue(Note.b + .third(.minor) == .d)
    XCTAssertTrue(Note.b + .third(.diminished()) == .d.flat())
    XCTAssertTrue(Note.b + .third(.major) == .d.sharp())
    XCTAssertTrue(Note.b + .third(.augmented()) == .d.sharp(2))
    XCTAssertTrue(Note.b + .third(.augmented(times: 2)) == .d.sharp(3))

    XCTAssertTrue(Note.b + .fourth(.perfect) == .e)
    XCTAssertTrue(Note.b + .fourth(.diminished()) == .e.flat())
    XCTAssertTrue(Note.b + .fourth(.augmented()) == .e.sharp())
    XCTAssertTrue(Note.b + .fourth(.augmented(times: 2)) == .e.sharp(2))

    XCTAssertTrue(Note.b + .fifth(.perfect) == .f.sharp())
    XCTAssertTrue(Note.b + .fifth(.diminished()) == .f)
    XCTAssertTrue(Note.b + .fifth(.augmented()) == .f.sharp(2))
    XCTAssertTrue(Note.b + .fifth(.augmented(times: 2)) == .f.sharp(3))

    XCTAssertTrue(Note.b + .sixth(.minor) == .g)
    XCTAssertTrue(Note.b + .sixth(.diminished()) == .g.flat())
    XCTAssertTrue(Note.b + .sixth(.major) == .g.sharp())
    XCTAssertTrue(Note.b + .sixth(.augmented()) == .g.sharp(2))
    XCTAssertTrue(Note.b + .sixth(.augmented(times: 2)) == .g.sharp(3))

    XCTAssertTrue(Note.b + .seventh(.minor) == .a)
    XCTAssertTrue(Note.b + .seventh(.diminished()) == .a.flat())
    XCTAssertTrue(Note.b + .seventh(.major) == .a.sharp())
    XCTAssertTrue(Note.b + .seventh(.augmented()) == .a.sharp(2))
    XCTAssertTrue(Note.b + .seventh(.augmented(times: 2)) == .a.sharp(3))

    XCTAssertTrue(Note.b + .octave() == .b)
    XCTAssertTrue(Note.b + .octave(.augmented()) == .b.sharp())
    XCTAssertTrue(Note.b + .octave(.diminished()) == .b.flat())
  }

  func testBSharpTranspositionUp() {
    XCTAssertTrue(Note.b.sharp() + .unison() == .b.sharp())
    XCTAssertTrue(Note.b.sharp() + .unison(.augmented()) == .b.sharp(2))
    XCTAssertTrue(Note.b.sharp() + .unison(.augmented(times: 2)) == .b.sharp(3))
    XCTAssertTrue(Note.b.sharp() + .unison(.diminished()) == .b)
    XCTAssertTrue(Note.b.sharp() + .unison(.diminished(times: 2)) == .b.flat())

    XCTAssertTrue(Note.b.sharp() + .second(.minor) == .c.sharp())
    XCTAssertTrue(Note.b.sharp() + .second(.diminished()) == .c)
    XCTAssertTrue(Note.b.sharp() + .second(.major) == .c.sharp(2))
    XCTAssertTrue(Note.b.sharp() + .second(.augmented()) == .c.sharp(3))
    XCTAssertTrue(Note.b.sharp() + .second(.augmented(times: 2)) == Note(name: .c, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.b.sharp() + .third(.minor) == .d.sharp())
    XCTAssertTrue(Note.b.sharp() + .third(.diminished()) == .d)
    XCTAssertTrue(Note.b.sharp() + .third(.major) == .d.sharp(2))
    XCTAssertTrue(Note.b.sharp() + .third(.augmented()) == .d.sharp(3))
    XCTAssertTrue(Note.b.sharp() + .third(.augmented(times: 2)) == Note(name: .d, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.b.sharp() + .fourth(.perfect) == .e.sharp())
    XCTAssertTrue(Note.b.sharp() + .fourth(.diminished()) == .e)
    XCTAssertTrue(Note.b.sharp() + .fourth(.augmented()) == .e.sharp(2))
    XCTAssertTrue(Note.b.sharp() + .fourth(.augmented(times: 2)) == .e.sharp(3))

    XCTAssertTrue(Note.b.sharp() + .fifth(.perfect) == .f.sharp(2))
    XCTAssertTrue(Note.b.sharp() + .fifth(.diminished()) == .f.sharp())
    XCTAssertTrue(Note.b.sharp() + .fifth(.augmented()) == .f.sharp(3))
    XCTAssertTrue(Note.b.sharp() + .fifth(.augmented(times: 2)) == Note(name: .f, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.b.sharp() + .sixth(.minor) == .g.sharp())
    XCTAssertTrue(Note.b.sharp() + .sixth(.diminished()) == .g)
    XCTAssertTrue(Note.b.sharp() + .sixth(.major) == .g.sharp(2))
    XCTAssertTrue(Note.b.sharp() + .sixth(.augmented()) == .g.sharp(3))
    XCTAssertTrue(Note.b.sharp() + .sixth(.augmented(times: 2)) == Note(name: .g, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.b.sharp() + .seventh(.minor) == .a.sharp())
    XCTAssertTrue(Note.b.sharp() + .seventh(.diminished()) == .a)
    XCTAssertTrue(Note.b.sharp() + .seventh(.major) == .a.sharp(2))
    XCTAssertTrue(Note.b.sharp() + .seventh(.augmented()) == .a.sharp(3))
    XCTAssertTrue(Note.b.sharp() + .seventh(.augmented(times: 2)) == Note(name: .a, accidental: .sharpened(times: 4)))

    XCTAssertTrue(Note.b.sharp() + .octave() == .b.sharp())
    XCTAssertTrue(Note.b.sharp() + .octave(.augmented()) == .b.sharp(2))
    XCTAssertTrue(Note.b.sharp() + .octave(.diminished()) == .b)

  }

  func testBFlatTranspositionUp() {
    XCTAssertTrue(Note.b.flat() + .unison() == .b.flat())
    XCTAssertTrue(Note.b.flat() + .unison(.augmented()) == .b)
    XCTAssertTrue(Note.b.flat() + .unison(.augmented(times: 2)) == .b.sharp())
    XCTAssertTrue(Note.b.flat() + .unison(.diminished()) == .b.flat(2))
    XCTAssertTrue(Note.b.flat() + .unison(.diminished(times: 2)) == .b.flat(3))

    XCTAssertTrue(Note.b.flat() + .second(.minor) == .c.flat())
    XCTAssertTrue(Note.b.flat() + .second(.diminished()) == .c.flat(2))
    XCTAssertTrue(Note.b.flat() + .second(.major) == .c)
    XCTAssertTrue(Note.b.flat() + .second(.augmented()) == .c.sharp())
    XCTAssertTrue(Note.b.flat() + .second(.augmented(times: 2)) == .c.sharp(2))

    XCTAssertTrue(Note.b.flat() + .third(.minor) == .d.flat())
    XCTAssertTrue(Note.b.flat() + .third(.diminished()) == .d.flat(2))
    XCTAssertTrue(Note.b.flat() + .third(.major) == .d)
    XCTAssertTrue(Note.b.flat() + .third(.augmented()) == .d.sharp())
    XCTAssertTrue(Note.b.flat() + .third(.augmented(times: 2)) == .d.sharp(2))

    XCTAssertTrue(Note.b.flat() + .fourth(.perfect) == .e.flat())
    XCTAssertTrue(Note.b.flat() + .fourth(.diminished()) == .e.flat(2))
    XCTAssertTrue(Note.b.flat() + .fourth(.augmented()) == .e)
    XCTAssertTrue(Note.b.flat() + .fourth(.augmented(times: 2)) == .e.sharp())

    XCTAssertTrue(Note.b.flat() + .fifth(.perfect) == .f)
    XCTAssertTrue(Note.b.flat() + .fifth(.diminished()) == .f.flat())
    XCTAssertTrue(Note.b.flat() + .fifth(.augmented()) == .f.sharp())
    XCTAssertTrue(Note.b.flat() + .fifth(.augmented(times: 2)) == .f.sharp(2))

    XCTAssertTrue(Note.b.flat() + .sixth(.minor) == .g.flat())
    XCTAssertTrue(Note.b.flat() + .sixth(.diminished()) == .g.flat(2))
    XCTAssertTrue(Note.b.flat() + .sixth(.major) == .g)
    XCTAssertTrue(Note.b.flat() + .sixth(.augmented()) == .g.sharp())
    XCTAssertTrue(Note.b.flat() + .sixth(.augmented(times: 2)) == .g.sharp(2))

    XCTAssertTrue(Note.b.flat() + .seventh(.minor) == .a.flat())
    XCTAssertTrue(Note.b.flat() + .seventh(.diminished()) == .a.flat(2))
    XCTAssertTrue(Note.b.flat() + .seventh(.major) == .a)
    XCTAssertTrue(Note.b.flat() + .seventh(.augmented()) == .a.sharp())
    XCTAssertTrue(Note.b.flat() + .seventh(.augmented(times: 2)) == .a.sharp(2))

    XCTAssertTrue(Note.b.flat() + .octave() == .b.flat())
    XCTAssertTrue(Note.b.flat() + .octave(.augmented()) == .b)
    XCTAssertTrue(Note.b.flat() + .octave(.diminished()) == .b.flat(2))

  }
}
