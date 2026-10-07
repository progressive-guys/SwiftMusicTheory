import XCTest
import SwiftMusicTheory
import Foundation

final class IntervalsTests: XCTestCase {

  func testSimpleIntervalsShortNames() throws {
    XCTAssertTrue(Interval.unison().shortTitle == "P1")
    XCTAssertTrue(Interval.unison(.augmented()).shortTitle == "A1")

    XCTAssertTrue(Interval.second(.major).shortTitle == "M2")
    XCTAssertTrue(Interval.second(.minor).shortTitle == "m2")
    XCTAssertTrue(Interval.second(.augmented()).shortTitle == "A2")
    XCTAssertTrue(Interval.second(.diminished()).shortTitle == "d2")

    XCTAssertTrue(Interval.third(.major).shortTitle == "M3")
    XCTAssertTrue(Interval.third(.minor).shortTitle == "m3")
    XCTAssertTrue(Interval.third(.augmented()).shortTitle == "A3")
    XCTAssertTrue(Interval.third(.diminished()).shortTitle == "d3")
    XCTAssertTrue(Interval.third(.augmented(times: 2)).shortTitle == "AA3")
    XCTAssertTrue(Interval.third(.diminished(times: 2)).shortTitle == "dd3")

    XCTAssertTrue(Interval.fourth().shortTitle == "P4")
    XCTAssertTrue(Interval.fourth(.augmented()).shortTitle == "A4")
    XCTAssertTrue(Interval.fourth(.diminished()).shortTitle == "d4")
    XCTAssertTrue(Interval.fourth(.augmented(times: 2)).shortTitle == "AA4")
    XCTAssertTrue(Interval.fourth(.diminished(times: 2)).shortTitle == "dd4")

    XCTAssertTrue(Interval.fifth().shortTitle == "P5")
    XCTAssertTrue(Interval.fifth(.augmented()).shortTitle == "A5")
    XCTAssertTrue(Interval.fifth(.diminished()).shortTitle == "d5")
    XCTAssertTrue(Interval.fifth(.augmented(times: 2)).shortTitle == "AA5")
    XCTAssertTrue(Interval.fifth(.diminished(times: 2)).shortTitle == "dd5")

    XCTAssertTrue(Interval.sixth(.major).shortTitle == "M6")
    XCTAssertTrue(Interval.sixth(.minor).shortTitle == "m6")
    XCTAssertTrue(Interval.sixth(.augmented()).shortTitle == "A6")
    XCTAssertTrue(Interval.sixth(.diminished()).shortTitle == "d6")
    XCTAssertTrue(Interval.sixth(.augmented(times: 2)).shortTitle == "AA6")
    XCTAssertTrue(Interval.sixth(.diminished(times: 2)).shortTitle == "dd6")

    XCTAssertTrue(Interval.seventh(.major).shortTitle == "M7")
    XCTAssertTrue(Interval.seventh(.minor).shortTitle == "m7")
    XCTAssertTrue(Interval.seventh(.augmented()).shortTitle == "A7")
    XCTAssertTrue(Interval.seventh(.diminished()).shortTitle == "d7")
    XCTAssertTrue(Interval.seventh(.augmented(times: 2)).shortTitle == "AA7")
    XCTAssertTrue(Interval.seventh(.diminished(times: 2)).shortTitle == "dd7")

    XCTAssertTrue(Interval.octave().shortTitle == "P8")
    XCTAssertTrue(Interval.octave(.diminished()).shortTitle == "d8")
  }

  func testCompoundIntervalsShortNames() throws {
    XCTAssertTrue(Interval.unison().octaves(1).shortTitle == "P8")

    XCTAssertTrue(Interval.second(.major).octaves(1).shortTitle == "M9")
    XCTAssertTrue(Interval.second(.minor).octaves(1).shortTitle == "m9")
    XCTAssertTrue(Interval.second(.augmented()).octaves(1).shortTitle == "A9")
    XCTAssertTrue(Interval.second(.diminished()).octaves(1).shortTitle == "d9")

    XCTAssertTrue(Interval.third(.major).octaves(1).shortTitle == "M10")
    XCTAssertTrue(Interval.third(.minor).octaves(1).shortTitle == "m10")
    XCTAssertTrue(Interval.third(.augmented()).octaves(1).shortTitle == "A10")
    XCTAssertTrue(Interval.third(.diminished()).octaves(1).shortTitle == "d10")
    XCTAssertTrue(Interval.third(.augmented(times: 2)).octaves(1).shortTitle == "AA10")
    XCTAssertTrue(Interval.third(.diminished(times: 2)).octaves(1).shortTitle == "dd10")

    XCTAssertTrue(Interval.fourth().octaves(1).shortTitle == "P11")
    XCTAssertTrue(Interval.fourth(.augmented()).octaves(1).shortTitle == "A11")
    XCTAssertTrue(Interval.fourth(.diminished()).octaves(1).shortTitle == "d11")
    XCTAssertTrue(Interval.fourth(.augmented(times: 2)).octaves(1).shortTitle == "AA11")
    XCTAssertTrue(Interval.fourth(.diminished(times: 2)).octaves(1).shortTitle == "dd11")

    XCTAssertTrue(Interval.fifth().octaves(1).shortTitle == "P12")
    XCTAssertTrue(Interval.fifth(.augmented()).octaves(1).shortTitle == "A12")
    XCTAssertTrue(Interval.fifth(.diminished()).octaves(1).shortTitle == "d12")
    XCTAssertTrue(Interval.fifth(.augmented(times: 2)).octaves(1).shortTitle == "AA12")
    XCTAssertTrue(Interval.fifth(.diminished(times: 2)).octaves(1).shortTitle == "dd12")

    XCTAssertTrue(Interval.sixth(.major).octaves(1).shortTitle == "M13")
    XCTAssertTrue(Interval.sixth(.minor).octaves(1).shortTitle == "m13")
    XCTAssertTrue(Interval.sixth(.augmented()).octaves(1).shortTitle == "A13")
    XCTAssertTrue(Interval.sixth(.diminished()).octaves(1).shortTitle == "d13")
    XCTAssertTrue(Interval.sixth(.augmented(times: 2)).octaves(1).shortTitle == "AA13")
    XCTAssertTrue(Interval.sixth(.diminished(times: 2)).octaves(1).shortTitle == "dd13")

    XCTAssertTrue(Interval.seventh(.major).octaves(1).shortTitle == "M14")
    XCTAssertTrue(Interval.seventh(.minor).octaves(1).shortTitle == "m14")
    XCTAssertTrue(Interval.seventh(.augmented()).octaves(1).shortTitle == "A14")
    XCTAssertTrue(Interval.seventh(.diminished()).octaves(1).shortTitle == "d14")
    XCTAssertTrue(Interval.seventh(.augmented(times: 2)).octaves(1).shortTitle == "AA14")
    XCTAssertTrue(Interval.seventh(.diminished(times: 2)).octaves(1).shortTitle == "dd14")

    XCTAssertTrue(Interval.octave().octaves(1).shortTitle == "P15")
    XCTAssertTrue(Interval.octave(.diminished()).octaves(1).shortTitle == "d15")
    XCTAssertTrue(Interval.unison(.augmented(times: 1)).octaves(2).shortTitle == "A15")
  }

  func testSecondsSum() {
    XCTAssertTrue(
      .second(.minor) + .second(.minor) == .third(.diminished())
    )
    XCTAssertTrue(
      .second(.major) + .second(.minor) == .third(.minor)
    )
    XCTAssertTrue(
      .second(.major) + .second(.major) == .third(.major)
    )
    XCTAssertTrue(
      .second(.major) + .third(.minor) == .fourth()
    )
    XCTAssertTrue(
      .second(.major) + .third(.minor) == .fourth()
    )
    XCTAssertTrue(
      .second(.major) + .fourth() == .fifth()
    )
    XCTAssertTrue(
      .second(.major) + .fifth() == .sixth(.major)
    )
    XCTAssertTrue(
      .second(.major) + .sixth(.major) == .seventh(.major)
    )
    XCTAssertTrue(
      .second(.minor) + .seventh(.major) == .octave()
    )
    XCTAssertTrue(
      .second(.minor) + .seventh(.minor) == .octave(.diminished())
    )
  }

  func testSixth() {
    XCTAssertTrue(
      Interval.second(.major) + .sixth(.augmented(times: 1)) == .seventh(.augmented())
    )
    XCTAssertTrue(
      Interval.second(.minor) + .sixth(.augmented(times: 1)) == .seventh(.major)
    )
  }

  func testIntervalsInit() {
    print(Interval(diatonicIndex: 2, semitones: 2)) // Prints "major second"
    XCTAssertTrue(Interval(diatonicIndex: 2, semitones: 1) == .second(.minor))
    XCTAssertTrue(Interval(diatonicIndex: 2, semitones: 2) == .second(.major))
    XCTAssertTrue(Interval(diatonicIndex: 17, semitones: 28) == .third(.major).octaves(2))
    XCTAssertTrue(Interval(diatonicIndex: 16, semitones: 26) == .second(.major).octaves(2))
    XCTAssertTrue(Interval(diatonicIndex: 1, semitones: 0) == .unison())
    XCTAssertTrue(Interval(diatonicIndex: 1, semitones: 12) == .octave())
    XCTAssertTrue(Interval(diatonicIndex: 8, semitones: 0) == .unison())
    XCTAssertTrue(Interval(diatonicIndex: 7, semitones: 12) == .seventh(.augmented()))
    XCTAssertTrue(Interval(diatonicIndex: 8, semitones: 12) == .octave())
    XCTAssertTrue(Interval(diatonicIndex: 9, semitones: 15) == .second(.augmented()).octaves(1))
  }

  func testAugmentedAndDiminished() {
    XCTAssertTrue(
      .third(.major) + .second(.major) == .fourth(.augmented())
    )
    XCTAssertTrue(
      .third(.major) + .third(.major) == .fifth(.augmented())
    )
    XCTAssertTrue(
      .third(.minor) + .second(.minor) == .fourth(.diminished())
    )
    XCTAssertTrue(
      .third(.diminished()) + .second(.minor) == .fourth(.diminished(times: 2))
    )
    XCTAssertTrue(
      .third(.minor) + .third(.minor) == .fifth(.diminished())
    )
    XCTAssertTrue(
      .second(.augmented()) + .second(.minor) == .third(.major)
    )
    XCTAssertTrue(
      Interval.second(.diminished()) + .second(.minor) == .third(.diminished(times: 2))
    )
    XCTAssertTrue(
      .second(.diminished()) + .second(.major) == .third(.diminished())
    )
    XCTAssertTrue(
      .second(.augmented()) + .third(.minor) == .fourth(.augmented())
    )
    XCTAssertTrue(.second(.major) + .third(.major) == .fourth(.augmented()))
    XCTAssertTrue(
      .unison(.augmented()) + .octave() == .octave(.augmented())
    )
  }

  func testEquasions() {
    XCTAssertTrue(Interval.second(.major) != .third(.diminished()))
    XCTAssertTrue(Interval.fourth(.augmented()) != .fifth(.diminished()))

    XCTAssertTrue(
      Interval.unison(.augmented()) == Interval.unison(.diminished())
    )
    XCTAssertTrue(
      Interval.octave() + .octave() + .octave() == .octave().octaves(2)
    )

    XCTAssertTrue(
      Interval.unison() + .octave() == .octave()
    )
  }

  func testFifthsSum() {
    XCTAssertTrue(
      .fifth() + .unison() == .fifth()
    )
  }

  func testCornerCases() {
    // C# -> Dbb, Dbb -> C#
    XCTAssertTrue(
      Interval.second(.diminished(times: 2)).inverted == .seventh(.augmented(times: 2))
    )

    // C -> C#, C# -> C
    XCTAssertTrue(
      Interval.octave(.augmented()).inverted == .unison(.diminished())
    )

    // C -> C#, C# -> C
    XCTAssertTrue(
      Interval.octave(.augmented()).inverted == .unison(.augmented())
    )

    // C -> Cb, Cb -> C
    XCTAssertTrue(
      Interval.unison(.diminished()).inverted == .octave(.augmented())
    )
  }

  func testInversions() {
    XCTAssertTrue(.unison().inverted == .octave())
    XCTAssertTrue(.second(.major).inverted == .seventh(.minor))
    XCTAssertTrue(.second(.augmented()).inverted == .seventh(.diminished()))
    XCTAssertTrue(.fifth(.augmented()).inverted == .fourth(.diminished()))
    XCTAssertTrue(.fourth(.diminished()).inverted == .fifth(.augmented()))
    XCTAssertTrue(.octave(.diminished()).inverted == .unison(.augmented()))
    XCTAssertTrue(.octave(.diminished()).inverted == .unison(.augmented()))
  }

  func testIntervalsDifference() {
    XCTAssertTrue(
      Interval.fifth() - Interval.fourth() == Interval.second(.major)
    )
    XCTAssertTrue(
      Interval.fourth() - Interval.fifth() == Interval.second(.major)
    )
    XCTAssertTrue(
      Interval.second(.major) - Interval.fifth() == Interval.fourth()
    )
    XCTAssertTrue(
      Interval.fifth() - Interval.fifth() == Interval.unison()
    )
    XCTAssertTrue(
      Interval.fifth() - Interval.fifth(.augmented()) == Interval.unison(.diminished())
    )
    XCTAssertTrue(
      Interval.fifth() - Interval.sixth(.major) == Interval.second(.major)
    )
    XCTAssertTrue(
      Interval.fifth() - Interval.fifth(.diminished()) == Interval.unison(.augmented())
    )
    XCTAssertTrue(
      Interval.fifth().octaves(1) - Interval.fifth() == Interval.octave()
    )
  }

  func testCompoundIntervals() {
    XCTAssertTrue(
      Interval.octave(.diminished()).octaves(3).inverted == Interval.unison(.augmented())
    )
    XCTAssertTrue(
      Interval.fifth(.augmented()).octaves(3).inverted == Interval.fourth(.diminished())
    )
    XCTAssertTrue(
      Interval.unison().octaves(1) == Interval.octave()
    )
    XCTAssertTrue(
      .second(.minor) + .octave() == .second(.minor).octaves(1)
    )
    XCTAssertTrue(
      .seventh(.major) + .fifth() == .fourth(.augmented()).octaves(1)
    )
    XCTAssertTrue(
      .fifth() + .fifth() == .second(.major).octaves(1)
    )
  }
}
