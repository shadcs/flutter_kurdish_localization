// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "kurdish_localization_plus",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_11)
    ],
    products: [
        .library(
            name: "kurdish_localization_plus",
            targets: ["kurdish_localization_plus"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "kurdish_localization_plus",
            dependencies: [],
            path: "Sources/kurdish_localization_plus"
        ),
    ]
)
