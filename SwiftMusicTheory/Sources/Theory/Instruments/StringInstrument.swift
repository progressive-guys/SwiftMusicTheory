public struct StringInstrument: MusicalInstrument {

  public typealias Fret = Int
  public typealias String = Int
  public typealias Tuning = [Pitch]

  // MARK: Config
  public let fretsCount: Int
  public let temperament: EqualTemperament
  
  public let tuning: Tuning
  
  public init(
    tuning: Tuning = .standard6String,
    temperament: EqualTemperament = EqualTemperament._12ET440,
    fretsCount: Int = 24
  ) {
    self.tuning = tuning
    self.fretsCount = fretsCount
    self.temperament = temperament
  }

  public func pitch(at position: (string: StringInstrument.String, fret: Fret)) -> Pitch {
    temperament.pitch(from: tuning[position.string - 1], shiftedBySubdivisions: position.fret)
  }
  
  public var tonesRange: ClosedRange<Tone> {
    minTone...maxTone
  }
  
  private var minTone: Tone {
    temperament.tone(for: pitch(at: (string: tuning.count, fret: 0)))
  }
  
  private var maxTone: Tone {
    temperament.tone(for: pitch(at: (string: 1, fret: fretsCount)))
  }
}

fileprivate extension Tone {
  static let stubTone = Tone(pitch: Note.c.octave(.smallest), frequency: 1)
}

public extension StringInstrument.Tuning {
  static var standard6String: StringInstrument.Tuning {
    [
      Note.e.octave(.oneLine),
      Note.b.octave(.small),
      Note.g.octave(.small),
      Note.d.octave(.small),
      Note.a.octave(.great),
      Note.e.octave(.great)
    ]
  }
  
  static var standard7String: StringInstrument.Tuning {
    [
      Note.e.octave(.oneLine),
      Note.b.octave(.small),
      Note.g.octave(.small),
      Note.d.octave(.small),
      Note.a.octave(.great),
      Note.e.octave(.great),
      Note.b.octave(.contra),
    ]
  }
  
  static var standard8String: StringInstrument.Tuning {
    [
      Note.e.octave(.oneLine),
      Note.b.octave(.small),
      Note.g.octave(.small),
      Note.d.octave(.small),
      Note.a.octave(.great),
      Note.e.octave(.great),
      Note.b.octave(.contra),
      Note.f.sharp().octave(.contra),
    ]
  }
  
  static var dropE8String: StringInstrument.Tuning {
    var dropD = standard8String
    dropD[7] = Note.e.octave(.contra)
    return dropD
  }

  static var dropD: StringInstrument.Tuning {
    var dropD = standard6String
    dropD[5] = Note.d.octave(.great)
    return dropD
  }
  
  static var standard4StringBass: StringInstrument.Tuning {
    [
      Note.g.octave(.small),
      Note.d.octave(.small),
      Note.a.octave(.great),
      Note.e.octave(.great)
    ]
  }
  
  static var standard5StringBass: StringInstrument.Tuning {
    [
      Note.g.octave(.small),
      Note.d.octave(.small),
      Note.a.octave(.great),
      Note.e.octave(.great),
      Note.b.octave(.contra)
    ]
  }
}
