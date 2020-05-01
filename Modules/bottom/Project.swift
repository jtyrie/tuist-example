import ProjectDescription

let project = Project(
    name: "bottom",
    settings: .init(
        configurations: [
            .release(name: "Stage"),
            .debug(name: "Debug"),
            .release(name: "Release")
        ]
    ),
    targets: [
        .init(
            name: "bottom",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "com.jtyrie.bottom",
            infoPlist: .default,
            sources: ["Sources/**"]
        ),
        .init(
            name: "bottomTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.jtyrie.bottomtests",
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "bottom")
            ]
        )
    ]
)
