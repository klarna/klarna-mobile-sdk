// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "KlarnaMobileSDK",
    products: [
        .library(
            name: "KlarnaMobileSDK",
            targets: ["KlarnaCore", "KlarnaMobileSDK"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "KlarnaCore",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaCore/2.7.3/KlarnaCore.xcframework.zip",
            checksum: "de17727a6fcc1477c47b5e9c1a76c2314ab58e8244547a74b45567fc2e9ee441"
        ),
        .binaryTarget(
            name: "KlarnaMobileSDK",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaMobileSDK/2.7.3/KlarnaMobileSDK.xcframework.zip",
            checksum: "a86c4ccff5cbefacf5b3d75be4d10c2b725b2dbb187a8c10895bf897df1adafb"
        )
    ]
)
