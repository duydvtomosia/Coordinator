// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "Coordinator",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Coordinator", targets: ["Coordinator"])
    ],
    dependencies: [
        .package(url: "https://github.com/tomosia-phuongvo/Merge.git", branch: "master"),
        .package(url: "https://github.com/SwiftUIX/SwiftUIX.git", exact: Version("0.1.5")),
    ],
    targets: [
        .target(
            name: "Coordinator",
            dependencies: [
                "Merge",
                "SwiftUIX"
            ],
            path: "Sources"
        ),
    ]
)
