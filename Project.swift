import ModalityBuild
import ProjectDescription
import SwiftMusicTheoryBuild

let project = Project.linted(
  name: "SwiftMusicTheory",
  targets: SwiftMusicTheoryProject.targets,
  lintPaths: [
    "SwiftMusicTheory": ["SwiftMusicTheory/Sources"],
    "SwiftMusicTheoryUnitTests": ["UnitTests"],
  ]
)
