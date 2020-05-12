// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VSSGraphQL",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "VSSGraphQL",
            targets: ["Client"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Saelyria/Artemis", .branch("master")),
//        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "Client",
                dependencies: [
                    "Artemis",
                ]
        ),
        .target(name: "CodeGenerator",
                dependencies: [
                    "Client",
                    "Artemis",
//                    "ArgumentParser",
                ]
        ),
        .target(name: "Demo",
                dependencies: [
                    "Client",
                ]
        ),
        .testTarget(
            name: "ClientTests",
            dependencies: ["Client"]),
    ]
)
