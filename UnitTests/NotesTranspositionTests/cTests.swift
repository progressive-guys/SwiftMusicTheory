import XCTest
import SwiftMusicTheory
import Foundation

final class CTests: XCTestCase {

  func testCTranspositionUp() {
    XCTAssertTrue(Note.c + .unison() == .c)
    XCTAssertTrue(Note.c + .unison(.augmented()) == .c.sharp())
    XCTAssertTrue(Note.c + .unison(.augmented(times: 2)) == .c.sharp(2))
    XCTAssertTrue(Note.c + .unison(.diminished()) == .c.flat())
    XCTAssertTrue(Note.c + .unison(.diminished(times: 2)) == .c.flat(2))

    XCTAssertTrue(Note.c + .second(.major) == .d)
    XCTAssertTrue(Note.c + .second(.minor) == .d.flat())
    XCTAssertTrue(Note.c + .second(.diminished()) == .d.flat(2))
    XCTAssertTrue(Note.c + .second(.diminished(times: 2)) == Note(name: .d, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.c + .second(.augmented()) == .d.sharp())
    XCTAssertTrue(Note.c + .second(.augmented(times: 2)) == .d.sharp(2))

    XCTAssertTrue(Note.c + .third(.major) == .e)
    XCTAssertTrue(Note.c + .third(.minor) == .e.flat())
    XCTAssertTrue(Note.c + .third(.diminished()) == .e.flat(2))
    XCTAssertTrue(Note.c + .third(.diminished(times: 2)) == Note(name: .e, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.c + .third(.augmented()) == .e.sharp())
    XCTAssertTrue(Note.c + .third(.augmented(times: 2)) == .e.sharp(2))

    XCTAssertTrue(Note.c + .fourth(.perfect) == .f)
    XCTAssertTrue(Note.c + .fourth(.diminished()) == .f.flat())
    XCTAssertTrue(Note.c + .fourth(.diminished(times: 2)) == .f.flat(2))
    XCTAssertTrue(Note.c + .fourth(.augmented()) == .f.sharp())
    XCTAssertTrue(Note.c + .fourth(.augmented(times: 2)) == .f.sharp(2))

    XCTAssertTrue(Note.c + .fifth(.perfect) == .g)
    XCTAssertTrue(Note.c + .fifth(.diminished()) == .g.flat())
    XCTAssertTrue(Note.c + .fifth(.diminished(times: 2)) == .g.flat(2))
    XCTAssertTrue(Note.c + .fifth(.augmented()) == .g.sharp())
    XCTAssertTrue(Note.c + .fifth(.augmented(times: 2)) == .g.sharp(2))

    XCTAssertTrue(Note.c + .sixth(.major) == .a)
    XCTAssertTrue(Note.c + .sixth(.minor) == .a.flat())
    XCTAssertTrue(Note.c + .sixth(.diminished()) == .a.flat(2))
    XCTAssertTrue(Note.c + .sixth(.diminished(times: 2)) == Note(name: .a, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.c + .sixth(.augmented()) == .a.sharp())
    XCTAssertTrue(Note.c + .sixth(.augmented(times: 2)) == .a.sharp(2))

    XCTAssertTrue(Note.c + .seventh(.major) == .b)
    XCTAssertTrue(Note.c + .seventh(.minor) == .b.flat())
    XCTAssertTrue(Note.c + .seventh(.diminished()) == .b.flat(2))
    XCTAssertTrue(Note.c + .seventh(.diminished(times: 2)) == Note(name: .b, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.c + .seventh(.augmented()) == .b.sharp())
    XCTAssertTrue(Note.c + .seventh(.augmented(times: 2)) == .b.sharp(2))

    XCTAssertTrue(Note.c + .seventh(.major) == .b)
    XCTAssertTrue(Note.c + .seventh(.minor) == .b.flat())
    XCTAssertTrue(Note.c + .seventh(.diminished()) == .b.flat(2))
    XCTAssertTrue(Note.c + .seventh(.diminished(times: 2)) == Note(name: .b, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.c + .seventh(.augmented()) == .b.sharp())
    XCTAssertTrue(Note.c + .seventh(.augmented(times: 2)) == .b.sharp(2))

    XCTAssertTrue(Note.c + .octave() == .c)
    XCTAssertTrue(Note.c + .octave(.augmented()) == .c.sharp())
    XCTAssertTrue(Note.c + .octave(.augmented(times: 2)) == .c.sharp(2))
    XCTAssertTrue(Note.c + .octave(.diminished()) == .c.flat())
    XCTAssertTrue(Note.c + .octave(.diminished(times: 2)) == .c.flat(2))
  }

  func testCSharpTranspositionUp() {
    XCTAssertTrue(Note.c.sharp() + .unison() == .c.sharp())
    XCTAssertTrue(Note.c.sharp() + .unison(.augmented()) == .c.sharp(2))
    XCTAssertTrue(Note.c.sharp() + .unison(.augmented(times: 2)) == .c.sharp(3))
    XCTAssertTrue(Note.c.sharp() + .unison(.diminished()) == .c)
    XCTAssertTrue(Note.c.sharp() + .unison(.diminished(times: 2)) == .c.flat())

    XCTAssertTrue(Note.c.sharp() + .second(.major) == .d.sharp())
    XCTAssertTrue(Note.c.sharp() + .second(.minor) == .d)
    XCTAssertTrue(Note.c.sharp() + .second(.diminished()) == .d.flat())
    XCTAssertTrue(Note.c.sharp() + .second(.diminished(times: 2)) == .d.flat(2))
    XCTAssertTrue(Note.c.sharp() + .second(.augmented()) == .d.sharp(2))
    XCTAssertTrue(Note.c.sharp() + .second(.augmented(times: 2)) == .d.sharp(3))

    XCTAssertTrue(Note.c.sharp() + .third(.major) == .e.sharp())
    XCTAssertTrue(Note.c.sharp() + .third(.minor) == .e)
    XCTAssertTrue(Note.c.sharp() + .third(.diminished()) == .e.flat())
    XCTAssertTrue(Note.c.sharp() + .third(.diminished(times: 2)) == .e.flat(2))
    XCTAssertTrue(Note.c.sharp() + .third(.augmented()) == .e.sharp(2))
    XCTAssertTrue(Note.c.sharp() + .third(.augmented(times: 2)) == .e.sharp(3))

    XCTAssertTrue(Note.c.sharp() + .fourth(.perfect) == .f.sharp())
    XCTAssertTrue(Note.c.sharp() + .fourth(.diminished()) == .f)
    XCTAssertTrue(Note.c.sharp() + .fourth(.diminished(times: 2)) == .f.flat())
    XCTAssertTrue(Note.c.sharp() + .fourth(.augmented()) == .f.sharp(2))
    XCTAssertTrue(Note.c.sharp() + .fourth(.augmented(times: 2)) == .f.sharp(3))

    XCTAssertTrue(Note.c.sharp() + .fifth(.perfect) == .g.sharp())
    XCTAssertTrue(Note.c.sharp() + .fifth(.diminished()) == .g)
    XCTAssertTrue(Note.c.sharp() + .fifth(.diminished(times: 2)) == .g.flat())
    XCTAssertTrue(Note.c.sharp() + .fifth(.augmented()) == .g.sharp(2))
    XCTAssertTrue(Note.c.sharp() + .fifth(.augmented(times: 2)) == .g.sharp(3))

    XCTAssertTrue(Note.c.sharp() + .sixth(.major) == .a.sharp())
    XCTAssertTrue(Note.c.sharp() + .sixth(.minor) == .a)
    XCTAssertTrue(Note.c.sharp() + .sixth(.diminished()) == .a.flat())
    XCTAssertTrue(Note.c.sharp() + .sixth(.diminished(times: 2)) == .a.flat(2))
    XCTAssertTrue(Note.c.sharp() + .sixth(.augmented()) == .a.sharp(2))
    XCTAssertTrue(Note.c.sharp() + .sixth(.augmented(times: 2)) == .a.sharp(3))

    XCTAssertTrue(Note.c.sharp() + .seventh(.major) == .b.sharp())
    XCTAssertTrue(Note.c.sharp() + .seventh(.minor) == .b)
    XCTAssertTrue(Note.c.sharp() + .seventh(.diminished()) == .b.flat())
    XCTAssertTrue(Note.c.sharp() + .seventh(.diminished(times: 2)) == .b.flat(2))
    XCTAssertTrue(Note.c.sharp() + .seventh(.augmented()) == .b.sharp(2))
    XCTAssertTrue(Note.c.sharp() + .seventh(.augmented(times: 2)) == .b.sharp(3))

    XCTAssertTrue(Note.c.sharp() + .octave() == .c.sharp())
    XCTAssertTrue(Note.c.sharp() + .octave(.augmented()) == .c.sharp(2))
    XCTAssertTrue(Note.c.sharp() + .octave(.augmented(times: 2)) == .c.sharp(3))
    XCTAssertTrue(Note.c.sharp() + .octave(.diminished()) == .c)
    XCTAssertTrue(Note.c.sharp() + .octave(.diminished(times: 2)) == .c.flat())
  }

  func testCFlatTranspositionUp() {
    XCTAssertTrue(Note.c.flat() + .unison() == .c.flat())
    XCTAssertTrue(Note.c.flat() + .unison(.augmented()) == .c)
    XCTAssertTrue(Note.c.flat() + .unison(.augmented(times: 2)) == .c.sharp())
    XCTAssertTrue(Note.c.flat() + .unison(.diminished()) == .c.flat(2))
    XCTAssertTrue(Note.c.flat() + .unison(.diminished(times: 2)) == Note(name: .c, accidental: .flattened(times: 3)))

    XCTAssertTrue(Note.c.flat() + .second(.major) == .d.flat())
    XCTAssertTrue(Note.c.flat() + .second(.minor) == .d.flat(2))
    XCTAssertTrue(Note.c.flat() + .second(.diminished()) == Note(name: .d, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.c.flat() + .second(.augmented()) == .d)
    XCTAssertTrue(Note.c.flat() + .second(.augmented(times: 2)) == .d.sharp())

    XCTAssertTrue(Note.c.flat() + .third(.major) == .e.flat())
    XCTAssertTrue(Note.c.flat() + .third(.minor) == .e.flat(2))
    XCTAssertTrue(Note.c.flat() + .third(.diminished()) == Note(name: .e, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.c.flat() + .third(.augmented()) == .e)
    XCTAssertTrue(Note.c.flat() + .third(.augmented(times: 2)) == .e.sharp())

    XCTAssertTrue(Note.c.flat() + .fourth(.perfect) == .f.flat())
    XCTAssertTrue(Note.c.flat() + .fourth(.diminished()) == .f.flat(2))
    XCTAssertTrue(Note.c.flat() + .fourth(.augmented()) == .f)
    XCTAssertTrue(Note.c.flat() + .fourth(.augmented(times: 2)) == .f.sharp())

    XCTAssertTrue(Note.c.flat() + .fifth(.perfect) == .g.flat())
    XCTAssertTrue(Note.c.flat() + .fifth(.diminished()) == .g.flat(2))
    XCTAssertTrue(Note.c.flat() + .fifth(.augmented()) == .g)
    XCTAssertTrue(Note.c.flat() + .fifth(.augmented(times: 2)) == .g.sharp())

    XCTAssertTrue(Note.c.flat() + .sixth(.major) == .a.flat())
    XCTAssertTrue(Note.c.flat() + .sixth(.minor) == .a.flat(2))
    XCTAssertTrue(Note.c.flat() + .sixth(.diminished()) == Note(name: .a, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.c.flat() + .sixth(.augmented()) == .a)
    XCTAssertTrue(Note.c.flat() + .sixth(.augmented(times: 2)) == .a.sharp())

    XCTAssertTrue(Note.c.flat() + .seventh(.major) == .b.flat())
    XCTAssertTrue(Note.c.flat() + .seventh(.minor) == .b.flat(2))
    XCTAssertTrue(Note.c.flat() + .seventh(.diminished()) == Note(name: .b, accidental: .flattened(times: 3)))
    XCTAssertTrue(Note.c.flat() + .seventh(.augmented()) == .b)
    XCTAssertTrue(Note.c.flat() + .seventh(.augmented(times: 2)) == .b.sharp())

    XCTAssertTrue(Note.c.flat() + .octave() == .c.flat())
    XCTAssertTrue(Note.c.flat() + .octave(.augmented()) == .c)
    XCTAssertTrue(Note.c.flat() + .octave(.augmented(times: 2)) == .c.sharp())
    XCTAssertTrue(Note.c.flat() + .octave(.diminished()) == .c.flat(2))
    XCTAssertTrue(Note.c.flat() + .octave(.diminished(times: 2)) == Note(name: .c, accidental: .flattened(times: 3)))
  }

}
