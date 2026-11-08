import ProjectDescription

public enum SwiftMusicTheoryProject {

  public static var targets: [Target] {
    [
      .target(
        name: "SwiftMusicTheory",
        destinations: [.iPhone, .iPad, .mac, .appleVision],
        product: .framework,
        bundleId: "com.modality.SwiftMusicTheory",
        infoPlist: .default,
        sources: ["SwiftMusicTheory/Sources/**"],
        settings: .settings(configurations: [.release(name: "Release", settings: ["ENABLE_TESTABILITY": "YES"])])
      ),
      .target(
        name: "SwiftMusicTheoryUnitTests",
        destinations: [.iPhone, .iPad, .mac, .appleVision],
        product: .unitTests,
        bundleId: "com.modality.SwiftMusicTheoryUnitTests",
        infoPlist: .default,
        sources: ["UnitTests/**"],
        dependencies: [.target(name: "SwiftMusicTheory")],
        settings: .settings(base: ["MACOSX_DEPLOYMENT_TARGET": "14.0"])
      ),
    ]
  }
}
