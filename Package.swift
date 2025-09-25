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
            name: "KlarnaNetworkPayment",
            targets: ["KlarnaCore", "KlarnaNetworkCore", "KlarnaNetworkPayment"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "KlarnaCore",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaCore/2.8.1/KlarnaCore.xcframework.zip",
            checksum: "61fea5f856a61e40dca435c771de91d58f38fad9e385c763706919d297179771"
        ),
        .binaryTarget(
            name: "KlarnaMobileSDK",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaMobileSDK/2.8.1/KlarnaMobileSDK.xcframework.zip",
            checksum: "6f1c9a11df6065ddf35d582234f6ed52d299992e4e820076f5a90a3ae4f72538"
        ),
        .binaryTarget(
            name: "KlarnaNetworkCore",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaNetworkCore/2.8.1/KlarnaNetworkCore.xcframework.zip",
            checksum: "2a1d2700dd469c7babd3d9c9585149fd8d2ceb2444901c76da7432a86a0d9b70"
        ),
        .binaryTarget(
            name: "KlarnaNetworkPayment",
            url: "https://x.klarnacdn.net/mobile-sdk/ios/frameworks/KlarnaNetworkPayment/2.8.1/KlarnaNetworkPayment.xcframework.zip",
            checksum: "0a952b8541bd567bd28e52415bd3b3b756a60fc31de5d22966e022de7f7c7980"
        )
    ]
)
