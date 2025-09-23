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
        .library(
            name: "KlarnaPayment",
            targets: ["KlarnaCore", "KlarnaNetworkCore", "KlarnaPayment"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "KlarnaCore",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaCore/2.8.0/KlarnaCore.xcframework.zip",
            checksum: "f426f32d32242df38791158d9aa3995b06872420a96a4469fc1c3947f8eea74f"
        ),
        .binaryTarget(
            name: "KlarnaMobileSDK",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaMobileSDK/2.8.0/KlarnaMobileSDK.xcframework.zip",
            checksum: "c7282daf205fb33180281fffb1d9c99037a188be05774680e244767fff7f08db"
        ),
        .binaryTarget(
            name: "KlarnaNetworkCore",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaNetworkCore/2.8.0/KlarnaNetworkCore.xcframework.zip",
            checksum: "331537ca10c58e6b6897b69e0f44d6133158e295b8cae4fcc55b06a90aaab2d8"
        ),
        .binaryTarget(
            name: "KlarnaPayment",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaPayment/2.8.0/KlarnaPayment.xcframework.zip",
            checksum: "c01938fe179a03911736ea27337a4e8dc45cd45739dff75a5c1b1e274dcd878c"
        )
    ]
)
