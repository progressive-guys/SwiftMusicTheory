import Testing
import SwiftMusicTheory

final class StringInstrumentTests {
  
  let guitar = StringInstrument()

  @Test(arguments: [
    (stringIndex: 0, fret: 0, pitch: Note.e.octave(.oneLine)),
    (stringIndex: 0, fret: 1, pitch: Note.f.octave(.oneLine)),
    (stringIndex: 0, fret: 2, pitch: Note.g.flat().octave(.oneLine)),
    (stringIndex: 0, fret: 3, pitch: Note.g.octave(.oneLine)),
    (stringIndex: 0, fret: 4, pitch: Note.a.flat().octave(.oneLine)),
    (stringIndex: 0, fret: 5, pitch: Note.a.octave(.oneLine)),
    (stringIndex: 0, fret: 6, pitch: Note.b.flat().octave(.oneLine)),
    (stringIndex: 0, fret: 7, pitch: Note.b.octave(.oneLine)),
    (stringIndex: 0, fret: 8, pitch: Note.c.octave(.twoLine)),
    (stringIndex: 0, fret: 9, pitch: Note.d.flat().octave(.twoLine)),
    (stringIndex: 0, fret: 10, pitch: Note.d.octave(.twoLine)),
    (stringIndex: 0, fret: 11, pitch: Note.e.flat().octave(.twoLine)),
    (stringIndex: 0, fret: 12, pitch: Note.e.octave(.twoLine)),
    (stringIndex: 0, fret: 13, pitch: Note.f.octave(.twoLine)),
    (stringIndex: 0, fret: 14, pitch: Note.g.flat().octave(.twoLine)),
    (stringIndex: 0, fret: 15, pitch: Note.g.octave(.twoLine)),
    (stringIndex: 0, fret: 16, pitch: Note.a.flat().octave(.twoLine)),
    (stringIndex: 0, fret: 17, pitch: Note.a.octave(.twoLine)),
    (stringIndex: 0, fret: 18, pitch: Note.b.flat().octave(.twoLine)),
    (stringIndex: 0, fret: 19, pitch: Note.b.octave(.twoLine)),
    (stringIndex: 0, fret: 20, pitch: Note.c.octave(.threeLine)),
    (stringIndex: 0, fret: 21, pitch: Note.d.flat().octave(.threeLine)),
    (stringIndex: 0, fret: 22, pitch: Note.d.octave(.threeLine)),
    (stringIndex: 0, fret: 23, pitch: Note.e.flat().octave(.threeLine)),
    (stringIndex: 0, fret: 24, pitch: Note.e.octave(.threeLine)),
    
    (stringIndex: 1, fret: 0, pitch: Note.b.octave(.small)),
    (stringIndex: 1, fret: 1, pitch: Note.c.octave(.oneLine)),
    (stringIndex: 1, fret: 2, pitch: Note.d.flat().octave(.oneLine)),
    (stringIndex: 1, fret: 3, pitch: Note.d.octave(.oneLine)),
    (stringIndex: 1, fret: 4, pitch: Note.e.flat().octave(.oneLine)),
    (stringIndex: 1, fret: 5, pitch: Note.e.octave(.oneLine)),
    (stringIndex: 1, fret: 6, pitch: Note.f.octave(.oneLine)),
    (stringIndex: 1, fret: 7, pitch: Note.g.flat().octave(.oneLine)),
    (stringIndex: 1, fret: 8, pitch: Note.g.octave(.oneLine)),
    (stringIndex: 1, fret: 9, pitch: Note.a.flat().octave(.oneLine)),
    (stringIndex: 1, fret: 10, pitch: Note.a.octave(.oneLine)),
    (stringIndex: 1, fret: 11, pitch: Note.b.flat().octave(.oneLine)),
    (stringIndex: 1, fret: 12, pitch: Note.b.octave(.oneLine)),
    (stringIndex: 1, fret: 13, pitch: Note.c.octave(.twoLine)),
    (stringIndex: 1, fret: 14, pitch: Note.d.flat().octave(.twoLine)),
    (stringIndex: 1, fret: 15, pitch: Note.d.octave(.twoLine)),
    (stringIndex: 1, fret: 16, pitch: Note.e.flat().octave(.twoLine)),
    (stringIndex: 1, fret: 17, pitch: Note.e.octave(.twoLine)),
    (stringIndex: 1, fret: 18, pitch: Note.f.octave(.twoLine)),
    (stringIndex: 1, fret: 19, pitch: Note.g.flat().octave(.twoLine)),
    (stringIndex: 1, fret: 20, pitch: Note.g.octave(.twoLine)),
    (stringIndex: 1, fret: 21, pitch: Note.a.flat().octave(.twoLine)),
    (stringIndex: 1, fret: 22, pitch: Note.a.octave(.twoLine)),
    (stringIndex: 1, fret: 23, pitch: Note.b.flat().octave(.twoLine)),
    (stringIndex: 1, fret: 24, pitch: Note.b.octave(.twoLine)),
    
    (stringIndex: 2, fret: 0, pitch: Note.g.octave(.small)),
    (stringIndex: 3, fret: 0, pitch: Note.d.octave(.small)),
    (stringIndex: 4, fret: 0, pitch: Note.a.octave(.great)),
    (stringIndex: 5, fret: 0, pitch: Note.e.octave(.great)),
    (stringIndex: 5, fret: 12, pitch: Note.e.octave(.small)),
  ])
  func testFrequencies(_ testCase: (stringIndex: Int, fret: StringInstrument.Fret, pitch: Pitch)) throws {
    let stringIndex = try #require(StringInstrument.StringIndex(rawValue: testCase.stringIndex))
    let testingPitch = try #require(guitar.pitch(at: (stringIndex: stringIndex, fret: testCase.fret)))

    #expect(testingPitch.note == testCase.pitch.note)
    #expect(testingPitch.octave == testCase.pitch.octave)
  }
}
