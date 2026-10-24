import ProjectDescription

let tuist = Tuist(project: .tuist(plugins: [
  // Tuist 4.210.0 treats a root Package.swift as a binary plugin with tag:.
  .git(url: "https://github.com/modality-lab/ModalityCore.git", sha: "refs/tags/1.1.1", directory: "SwiftStyle")
]))
