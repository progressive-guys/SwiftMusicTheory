import ProjectDescription
import ModalityBuild

let project = Project.linted(
  name: "SwiftMusicTheory",
  targets: [
    .target(
      name: "SwiftMusicTheory",
      destinations: [.iPhone, .iPad, .mac, .appleVision],
      product: .framework,
      bundleId: "com.modality.SwiftMusicTheory",
      infoPlist: .default,
      sources: ["SwiftMusicTheory/Sources/**"],
      settings: .modalitySettings(release: ["ENABLE_TESTABILITY": "YES"])
    ),
    .target(
      name: "SwiftMusicTheoryUnitTests",
      destinations: [.iPhone, .iPad, .mac, .appleVision],
      product: .unitTests,
      bundleId: "com.modality.SwiftMusicTheoryUnitTests",
      infoPlist: .default,
      sources: ["UnitTests/**"],
      dependencies: [.target(name: "SwiftMusicTheory")],
      settings: .modalitySettings(base: ["MACOSX_DEPLOYMENT_TARGET": "14.0"])
    ),
  ],
  lintPaths: [
    "SwiftMusicTheory": ["SwiftMusicTheory/Sources"],
    "SwiftMusicTheoryUnitTests": ["UnitTests"],
  ]
)
