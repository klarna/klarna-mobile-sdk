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
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaCore/2.7.1/KlarnaCore.xcframework.zip",
            checksum: "8847c034d84138ccdcc45086a5321b5f3e660581ed17ec7ae9d5c8e21d5169da"
        ),
        .binaryTarget(
            name: "KlarnaMobileSDK",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaMobileSDK/2.7.1/KlarnaMobileSDK.xcframework.zip",
            checksum: "434daee5ddd6d6a989e08865c00e6e32cc1506f2730292e751edd0903ffe14b9"
        )
    ]
)
