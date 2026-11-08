import ProjectDescription

public enum SwiftMusicTheoryProjects: String, CaseIterable {

  case library = "."

  public var targets: [Target] {
    switch self {
    case .library: SwiftMusicTheoryProject.targets
    }
  }
}
