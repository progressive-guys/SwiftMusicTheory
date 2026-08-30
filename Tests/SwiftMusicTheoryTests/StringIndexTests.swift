import SwiftMusicTheory
import Testing

struct StringIndexTests {
  @Test(arguments: [0, 1, 5])
  func acceptsNonNegativeValues(_ rawValue: Int) {
    #expect(StringInstrument.StringIndex(rawValue: rawValue)?.rawValue == rawValue)
  }

  @Test
  func rejectsNegativeValueAndValidatesInstrumentBounds() throws {
    let instrument = StringInstrument()
    let valid = try #require(StringInstrument.StringIndex(rawValue: 5))
    let invalid = try #require(StringInstrument.StringIndex(rawValue: 6))

    #expect(StringInstrument.StringIndex(rawValue: -1) == nil)
    #expect(instrument.contains(valid))
    #expect(!instrument.contains(invalid))
    #expect(instrument.pitch(at: (stringIndex: valid, fret: 0)) != nil)
    #expect(instrument.pitch(at: (stringIndex: invalid, fret: 0)) == nil)
  }
}
