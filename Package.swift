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
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaCore/2.7.2/KlarnaCore.xcframework.zip",
            checksum: "b734668ec96178dc9867a601a5d7eef4ef8ac0af9b39f9813cae348e332ddcbb"
        ),
        .binaryTarget(
            name: "KlarnaMobileSDK",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaMobileSDK/2.7.2/KlarnaMobileSDK.xcframework.zip",
            checksum: "3b7fc9aed9103f0170e494a08cba8e6c94c16951563ba84ceea9df14e600d627"
        )
    ]
)
