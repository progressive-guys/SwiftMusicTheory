// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "SwiftMusicTheory",
  platforms: [.iOS(.v16), .macOS(.v13), .visionOS(.v1)],
  products: [
    .library(
      name: "SwiftMusicTheory",
      targets: ["SwiftMusicTheory"]
    ),
  ],
  targets: [
    .target(
      name: "SwiftMusicTheory",
      path: "SwiftMusicTheory",
      sources: ["Sources"]
    ),
    .testTarget(
      name: "SwiftMusicTheoryUnitTests",
      dependencies: ["SwiftMusicTheory"],
      path: "UnitTests"
    ),
  ]
)
