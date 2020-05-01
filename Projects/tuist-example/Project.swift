import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(name: "tuist-example", platform: .iOS, dependencies: [
    .project(target: "tuist-exampleKit", path: .relativeToManifest("../tuist-exampleKit"))
])
