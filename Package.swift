// swift-tools-version: 6.0

import PackageDescription

let package = Package(
        name: "AntoonMe",
        platforms: [.macOS(.v14)],
        dependencies: [
            .package(url: "https://github.com/twostraws/Ignite.git", branch: "main")
        ],
        targets: [
            .executableTarget(
                name: "AntoonMe",
                dependencies: ["Ignite"],
                path: "Sources"
            )
        ]
    )