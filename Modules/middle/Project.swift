import ProjectDescription

let project = Project(
    name: "middle",
    settings: .init(
        configurations: [
            .release(name: "Stage"),
            .debug(name: "Debug"),
            .release(name: "Release")
        ]
    ),
    targets: [
        .init(
            name: "middle",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "com.jtyrie.middle",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                 .project(target: "bottom", path: "../bottom"),
            ]
        ),
        .init(
            name: "middleSampleApp",
            platform: .iOS,
            product: .app,
            bundleId: "com.jtyrie.middleSampleApp",
            infoPlist: .extendingDefault(with: [ "UIMainStoryboardFile" : "" ]),
            sources: ["Sample/**"],
            dependencies: [
                .target(name: "middle")
            ]
        ),
        .init(
            name: "middleTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.jtyrie.middletests",
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "middle")
            ]
        )
    ]
)
