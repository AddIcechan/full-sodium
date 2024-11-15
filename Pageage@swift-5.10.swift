// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "full-sodium",
    platforms: [
        .iOS(.v12),  // 指定支持的平台及版本
        .macOS(.v10_14),
        .tvOS(.v17),
        .visionOS(.v1),
        .macCatalyst(.v13),
        .watchOS(.v9),
    ],
    products: [
        .library(
            name: "full-sodium",
            targets: [ "ClibsodiumPackage"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "ClibsodiumPackage",
            path: "./Sources/Clibsodium.xcframework"
        ),
        .testTarget(
            name: "full_sodiumTests",
            dependencies: ["ClibsodiumPackage"]
        ),
    ],
    swiftLanguageModes: [.v5]
)
