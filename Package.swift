// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOS-SDK-Basic",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "iOS-SDK-Basic",
            targets: ["iOS-SDK-Basic"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "iOS-SDK-Basic",
            dependencies: [],
            resources: [
                // We can add resources like .xib or .storyboard if needed, but we'll do it programmatically for simplicity.
                // .process("Resources")
            ]),
        .testTarget(
            name: "iOS-SDK-BasicTests",
            dependencies: ["iOS-SDK-Basic"]),
    ]
)