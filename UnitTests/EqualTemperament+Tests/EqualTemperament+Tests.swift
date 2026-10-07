import XCTest
import SwiftMusicTheory
import Foundation

final class EqualTemperamentTests: XCTestCase {

  let temperment = EqualTemperament._12ET440

  func testFreqiencies() throws {
    let cases: [(Pitch, Double)] = [
      (Pitch(.a, 4), 440.0),
      (Pitch(.a, 4, cents: 10), 442.549),
      (Pitch(.b, 4), 493.883),
      (Pitch(.g.sharp(2), 4), 440.0),
      (Pitch(.b.flat(2), 4), 440.0),
      (Pitch(.a, 5), 880.0),
      (Pitch(.a, 3), 220.0),
      (Pitch(.c, 1), 32.703),
      (Pitch(.c, 5), 523.251),
      (Pitch(.c, 5, cents: 25), 530.862),
      (Pitch(.c, 5, cents: -25), 515.749),
      (Pitch(.g.flat(), 0), 23.125),
      (Pitch(.g.flat(), 0, cents: -49), 22.479),
      (Pitch(.f, 0, cents: 50), 22.466),
      (Pitch(.b, 2), 123.471)
    ]
    for testCase in cases {
      XCTAssertTrue(
        temperment.tone(for: testCase.0).frequency.rounded(toDecimal: 3) == testCase.1.rounded(toDecimal: 3)
      )

      let tone = temperment.tone(at: testCase.1)
      XCTAssertTrue(
        tone.pitch.note.semitonesNormalized == testCase.0.note.semitonesNormalized
      )
      XCTAssertTrue(
        tone.pitch.octave.rawValue == testCase.0.octave.rawValue
      )
      XCTAssertTrue(
        tone.pitch.cents == testCase.0.cents
      )
    }
  }
}
