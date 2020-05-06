// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HMVssGraphQLClient",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "HMVssGraphQLClient",
            targets: ["HMVssGraphQLClient"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
//        .package(url: "https://github.com/doofyus/Artemis.git", .branch("master")),
        .package(path: "/Users/mikk/Desktop/Workspace.nosync/Source/Artemis/"),
//        .package(url: "https://github.com/nerdsupremacist/Graphaello.git", .branch("master")),
//        .package(url: "https://github.com/remind101/AutoGraph", .branch("master")),
//        .package(url: "https://github.com/NicholasBellucci/SociableWeaver.git", .branch("master")),
//        .package(path: "/Users/mikk/Desktop/SociableWeaver/")
//        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "HMVssGraphQLClient",
                dependencies: [
                    "Artemis",
//                    "SociableWeaver",
//                    "ArgumentParser",
                ]
        ),
        .target(name: "App",
                dependencies: [
                    "HMVssGraphQLClient",
                    "Artemis",
//                    "SociableWeaver",
                ]
        ),
        .testTarget(
            name: "HMVssGraphQLClientTests",
            dependencies: ["HMVssGraphQLClient"]),
    ]
)
