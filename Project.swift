import ProjectDescription

let project = Project(
    name: "TuistExample",
    settings: .init(
        configurations: [
            .release(name: "Stage"),
            .debug(name: "Debug"),
            .release(name: "Release")
        ]
    ),
    targets: [
        .init(
            name: "TuistExample",
            platform: .iOS,
            product: .app,
            bundleId: "com.jtyrie.TuistExample",
            infoPlist: .extendingDefault(with: [ "UIMainStoryboardFile" : "" ]),
            sources: ["Sources/**"],
            dependencies: [
                 .project(target: "middle", path: "Modules/middle"),
            ]
        ),
        .init(
            name: "TuistExampleTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.jtyrie.tuistexampletests",
            infoPlist: .default,
            sources: ["Tests/**"]
        )
    ]
)
