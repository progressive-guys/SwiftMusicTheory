import ProjectDescription
import SwiftMusicTheoryProjectDescription

let project = Project(
  name: "SwiftMusicTheory",
  organizationName: "Modality",
  settings: .settings(configurations: [
    .debug(name: "Debug", xcconfig: "Configuration/Signing.xcconfig"),
    .release(name: "Release", xcconfig: "Configuration/Signing.xcconfig")
  ]),
  targets: SwiftMusicTheoryTargets().all,
  additionalFiles: ["README.md", "Package.swift", "Tuist.swift", "Tuist/**", "Configuration/**"],
  resourceSynthesizers: [.strings()]
)
