import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(name: "tuist-exampleKit", platform: .iOS, dependencies: [
    .project(target: "tuist-exampleSupport", path: .relativeToManifest("../tuist-exampleSupport"))
])
