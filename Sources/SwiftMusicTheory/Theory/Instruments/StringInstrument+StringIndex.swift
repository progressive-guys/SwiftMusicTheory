import Foundation

public extension StringInstrument {
  typealias Position = (stringIndex: StringIndex, fret: Fret)

  struct StringIndex: RawRepresentable, Hashable, Comparable, Sendable, Codable {
    public let rawValue: Int

    public init?(rawValue: Int) {
      guard rawValue >= 0 else { return nil }
      self.rawValue = rawValue
    }

    public static func < (lhs: Self, rhs: Self) -> Bool {
      lhs.rawValue < rhs.rawValue
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.singleValueContainer()
      let rawValue = try container.decode(Int.self)
      guard let value = Self(rawValue: rawValue) else {
        throw DecodingError.dataCorruptedError(in: container, debugDescription: "String index must be non-negative")
      }
      self = value
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }

  func contains(_ stringIndex: StringIndex) -> Bool {
    stringIndex.rawValue < tuning.count
  }

  func pitch(at position: Position) -> Pitch? {
    guard contains(position.stringIndex) else { return nil }
    return temperament.pitch(from: tuning[position.stringIndex.rawValue], shiftedBySubdivisions: position.fret)
  }
}
