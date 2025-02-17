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
            url: "https://github.com/klarna/klarna-mobile-sdk/releases/download/2.6.24/KlarnaMobileSDK-basic.xcframework.zip",
            checksum: "74e7741b55ccdc51b9ca9ddbd447d249fe217d23e6051a0bed3045519002a721"
        )
    ]
)