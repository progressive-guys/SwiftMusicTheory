import XCTest
import SwiftMusicTheory
import Foundation

final class FTests: XCTestCase {

  func testFTranspositionUp() {
    XCTAssertTrue(Note.f + .unison() == .f)
    XCTAssertTrue(Note.f + .unison(.augmented()) == .f.sharp())
    XCTAssertTrue(Note.f + .unison(.augmented(times: 2)) == .f.sharp(2))
    XCTAssertTrue(Note.f + .unison(.diminished()) == .f.flat())
    XCTAssertTrue(Note.f + .unison(.diminished(times: 2)) == .f.flat(2))

    XCTAssertTrue(Note.f + .second(.minor) == .g.flat())
    XCTAssertTrue(Note.f + .second(.diminished()) == .g.flat(2))
    XCTAssertTrue(Note.f + .second(.diminished(times: 2)) == .g.flat(3))
    XCTAssertTrue(Note.f + .second(.major) == .g)
    XCTAssertTrue(Note.f + .second(.augmented()) == .g.sharp())
    XCTAssertTrue(Note.f + .second(.augmented(times: 2)) == .g.sharp(2))

    XCTAssertTrue(Note.f + .third(.minor) == .a.flat())
    XCTAssertTrue(Note.f + .third(.diminished()) == .a.flat(2))
    XCTAssertTrue(Note.f + .third(.diminished(times: 2)) == .a.flat(3))
    XCTAssertTrue(Note.f + .third(.major) == .a)
    XCTAssertTrue(Note.f + .third(.augmented()) == .a.sharp())
    XCTAssertTrue(Note.f + .third(.augmented(times: 2)) == .a.sharp(2))

    XCTAssertTrue(Note.f + .fourth(.perfect) == .b.flat())
    XCTAssertTrue(Note.f + .fourth(.diminished()) == .b.flat(2))
    XCTAssertTrue(Note.f + .fourth(.diminished(times: 2)) == .b.flat(3))
    XCTAssertTrue(Note.f + .fourth(.augmented()) == .b)
    XCTAssertTrue(Note.f + .fourth(.augmented(times: 2)) == .b.sharp())

    XCTAssertTrue(Note.f + .fifth(.perfect) == .c)
    XCTAssertTrue(Note.f + .fifth(.diminished()) == .c.flat())
    XCTAssertTrue(Note.f + .fifth(.diminished(times: 2)) == .c.flat(2))
    XCTAssertTrue(Note.f + .fifth(.augmented()) == .c.sharp())
    XCTAssertTrue(Note.f + .fifth(.augmented(times: 2)) == .c.sharp(2))

    XCTAssertTrue(Note.f + .sixth(.minor) == .d.flat())
    XCTAssertTrue(Note.f + .sixth(.diminished()) == .d.flat(2))
    XCTAssertTrue(Note.f + .sixth(.diminished(times: 2)) == .d.flat(3))
    XCTAssertTrue(Note.f + .sixth(.major) == .d)
    XCTAssertTrue(Note.f + .sixth(.augmented()) == .d.sharp())
    XCTAssertTrue(Note.f + .sixth(.augmented(times: 2)) == .d.sharp(2))

    XCTAssertTrue(Note.f + .seventh(.minor) == .e.flat())
    XCTAssertTrue(Note.f + .seventh(.diminished()) == .e.flat(2))
    XCTAssertTrue(Note.f + .seventh(.diminished(times: 2)) == .e.flat(3))
    XCTAssertTrue(Note.f + .seventh(.major) == .e)
    XCTAssertTrue(Note.f + .seventh(.augmented()) == .e.sharp())
    XCTAssertTrue(Note.f + .seventh(.augmented(times: 2)) == .e.sharp(2))

    XCTAssertTrue(Note.f + .octave() == .f)
    XCTAssertTrue(Note.f + .octave(.augmented()) == .f.sharp())
    XCTAssertTrue(Note.f + .octave(.augmented(times: 2)) == .f.sharp(2))
    XCTAssertTrue(Note.f + .octave(.diminished()) == .f.flat())
    XCTAssertTrue(Note.f + .octave(.diminished(times: 2)) == .f.flat(2))
  }

  func testFSharpTranspositionUp() {
    XCTAssertTrue(Note.f.sharp() + .unison() == .f.sharp())
    XCTAssertTrue(Note.f.sharp() + .unison(.augmented()) == .f.sharp(2))
    XCTAssertTrue(Note.f.sharp() + .unison(.augmented(times: 2)) == .f.sharp(3))
    XCTAssertTrue(Note.f.sharp() + .unison(.diminished()) == .f)
    XCTAssertTrue(Note.f.sharp() + .unison(.diminished(times: 2)) == .f.flat())

    XCTAssertTrue(Note.f.sharp() + .second(.minor) == .g)
    XCTAssertTrue(Note.f.sharp() + .second(.diminished()) == .g.flat())
    XCTAssertTrue(Note.f.sharp() + .second(.diminished(times: 2)) == .g.flat(2))
    XCTAssertTrue(Note.f.sharp() + .second(.major) == .g.sharp())
    XCTAssertTrue(Note.f.sharp() + .second(.augmented()) == .g.sharp(2))
    XCTAssertTrue(Note.f.sharp() + .second(.augmented(times: 2)) == .g.sharp(3))

    XCTAssertTrue(Note.f.sharp() + .third(.minor) == .a)
    XCTAssertTrue(Note.f.sharp() + .third(.diminished()) == .a.flat())
    XCTAssertTrue(Note.f.sharp() + .third(.diminished(times: 2)) == .a.flat(2))
    XCTAssertTrue(Note.f.sharp() + .third(.major) == .a.sharp())
    XCTAssertTrue(Note.f.sharp() + .third(.augmented()) == .a.sharp(2))
    XCTAssertTrue(Note.f.sharp() + .third(.augmented(times: 2)) == .a.sharp(3))

    XCTAssertTrue(Note.f.sharp() + .fourth(.perfect) == .b)
    XCTAssertTrue(Note.f.sharp() + .fourth(.diminished()) == .b.flat())
    XCTAssertTrue(Note.f.sharp() + .fourth(.diminished(times: 2)) == .b.flat(2))
    XCTAssertTrue(Note.f.sharp() + .fourth(.augmented()) == .b.sharp())
    XCTAssertTrue(Note.f.sharp() + .fourth(.augmented(times: 2)) == .b.sharp(2))

    XCTAssertTrue(Note.f.sharp() + .fifth(.perfect) == .c.sharp())
    XCTAssertTrue(Note.f.sharp() + .fifth(.diminished()) == .c)
    XCTAssertTrue(Note.f.sharp() + .fifth(.diminished(times: 2)) == .c.flat())
    XCTAssertTrue(Note.f.sharp() + .fifth(.augmented()) == .c.sharp(2))
    XCTAssertTrue(Note.f.sharp() + .fifth(.augmented(times: 2)) == .c.sharp(3))

    XCTAssertTrue(Note.f.sharp() + .sixth(.minor) == .d)
    XCTAssertTrue(Note.f.sharp() + .sixth(.diminished()) == .d.flat())
    XCTAssertTrue(Note.f.sharp() + .sixth(.diminished(times: 2)) == .d.flat(2))
    XCTAssertTrue(Note.f.sharp() + .sixth(.major) == .d.sharp())
    XCTAssertTrue(Note.f.sharp() + .sixth(.augmented()) == .d.sharp(2))
    XCTAssertTrue(Note.f.sharp() + .sixth(.augmented(times: 2)) == .d.sharp(3))

    XCTAssertTrue(Note.f.sharp() + .seventh(.minor) == .e)
    XCTAssertTrue(Note.f.sharp() + .seventh(.diminished()) == .e.flat())
    XCTAssertTrue(Note.f.sharp() + .seventh(.diminished(times: 2)) == .e.flat(2))
    XCTAssertTrue(Note.f.sharp() + .seventh(.major) == .e.sharp())
    XCTAssertTrue(Note.f.sharp() + .seventh(.augmented()) == .e.sharp(2))
    XCTAssertTrue(Note.f.sharp() + .seventh(.augmented(times: 2)) == .e.sharp(3))

    XCTAssertTrue(Note.f.sharp() + .octave() == .f.sharp())
    XCTAssertTrue(Note.f.sharp() + .octave(.augmented()) == .f.sharp(2))
    XCTAssertTrue(Note.f.sharp() + .octave(.augmented(times: 2)) == .f.sharp(3))
    XCTAssertTrue(Note.f.sharp() + .octave(.diminished()) == .f)
    XCTAssertTrue(Note.f.sharp() + .octave(.diminished(times: 2)) == .f.flat())
  }

  func testFFlatTranspositionUp() {
    XCTAssertTrue(Note.f.flat() + .unison() == .f.flat())
    XCTAssertTrue(Note.f.flat() + .unison(.augmented()) == .f)
    XCTAssertTrue(Note.f.flat() + .unison(.augmented(times: 2)) == .f.sharp())
    XCTAssertTrue(Note.f.flat() + .unison(.diminished()) == .f.flat(2))
    XCTAssertTrue(Note.f.flat() + .unison(.diminished(times: 2)) == .f.flat(3))

    XCTAssertTrue(Note.f.flat() + .second(.minor) == .g.flat(2))
    XCTAssertTrue(Note.f.flat() + .second(.diminished()) == .g.flat(3))
    XCTAssertTrue(Note.f.flat() + .second(.major) == .g.flat())
    XCTAssertTrue(Note.f.flat() + .second(.augmented()) == .g)
    XCTAssertTrue(Note.f.flat() + .second(.augmented(times: 2)) == .g.sharp())

    XCTAssertTrue(Note.f.flat() + .third(.minor) == .a.flat(2))
    XCTAssertTrue(Note.f.flat() + .third(.diminished()) == .a.flat(3))
    XCTAssertTrue(Note.f.flat() + .third(.major) == .a.flat())
    XCTAssertTrue(Note.f.flat() + .third(.augmented()) == .a)
    XCTAssertTrue(Note.f.flat() + .third(.augmented(times: 2)) == .a.sharp())

    XCTAssertTrue(Note.f.flat() + .fourth(.perfect) == .b.flat(2))
    XCTAssertTrue(Note.f.flat() + .fourth(.diminished()) == .b.flat(3))
    XCTAssertTrue(Note.f.flat() + .fourth(.augmented()) == .b.flat())

    XCTAssertTrue(Note.f.flat() + .fifth(.perfect) == .c.flat())
    XCTAssertTrue(Note.f.flat() + .fifth(.diminished()) == .c.flat(2))
    XCTAssertTrue(Note.f.flat() + .fifth(.augmented()) == .c)

    XCTAssertTrue(Note.f.flat() + .sixth(.minor) == .d.flat(2))
    XCTAssertTrue(Note.f.flat() + .sixth(.diminished()) == .d.flat(3))
    XCTAssertTrue(Note.f.flat() + .sixth(.major) == .d.flat())
    XCTAssertTrue(Note.f.flat() + .sixth(.augmented()) == .d)

    XCTAssertTrue(Note.f.flat() + .seventh(.minor) == .e.flat(2))
    XCTAssertTrue(Note.f.flat() + .seventh(.diminished()) == .e.flat(3))
    XCTAssertTrue(Note.f.flat() + .seventh(.major) == .e.flat())
    XCTAssertTrue(Note.f.flat() + .seventh(.augmented()) == .e)

    XCTAssertTrue(Note.f.flat() + .octave() == .f.flat())
    XCTAssertTrue(Note.f.flat() + .octave(.augmented()) == .f)
    XCTAssertTrue(Note.f.flat() + .octave(.diminished()) == .f.flat(2))
    XCTAssertTrue(Note.f.flat() + .octave(.diminished(times: 2)) == .f.flat(3))
  }
}
