// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "KlarnaMobileSDK",
    products: [
        .library(
            name: "KlarnaMobileSDK",
            targets: ["KlarnaMobileSDK"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "KlarnaMobileSDK",
            url: "https://github.com/klarna/klarna-mobile-sdk/releases/download/2.6.17/KlarnaMobileSDK-basic.xcframework.zip",
            checksum: "a4fc5fbc2d3182b8bc76713269874fd44cec4518bf55645374aa8d10a7b63d0d"
        ),
    ]
)
