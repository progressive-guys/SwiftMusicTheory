import ProjectDescription
import SwiftMusicTheoryBuild

let workspace = Workspace(
  name: "SwiftMusicTheory",
  projects: SwiftMusicTheoryProjects.allCases.map { .relativeToManifest($0.rawValue) },
  generationOptions: .options(lastXcodeUpgradeCheck: "27.1")
)
