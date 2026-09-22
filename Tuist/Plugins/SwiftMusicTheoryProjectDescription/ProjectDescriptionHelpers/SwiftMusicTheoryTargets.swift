import ProjectDescription

public struct SwiftMusicTheoryTargets {
  private let sourceRoot: String

  public init(sourceRoot: String = ".") {
    self.sourceRoot = sourceRoot
  }

  private var targets: [Target] {
    [
      .target(
        name: "SwiftMusicTheory",
        destinations: [.iPad, .iPhone, .mac, .appleVision],
        product: .framework,
        bundleId: "pure.tones.SwiftMusicTheory",
        infoPlist: .default,
        sources: ["\(sourceRoot)/Sources/SwiftMusicTheory/**"]
      )
    ]
  }

  public var unitTests: [Target] {
    [
      .target(
        name: "SwiftMusicTheoryTests",
        destinations: [.iPad, .iPhone, .mac, .appleVision],
        product: .unitTests,
        bundleId: "pure.tones.SwiftMusicTheory.tests",
        infoPlist: .default,
        sources: ["\(sourceRoot)/Tests/SwiftMusicTheoryTests/**"],
        dependencies: [
          .target(name: "SwiftMusicTheory")
        ]
      )
    ]
  }

  public var all: [Target] { targets + unitTests }
}
