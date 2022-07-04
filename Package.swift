// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FDKClient",
    platforms: [
        .iOS(.v11), .macOS(.v10_12)
    ],
    products: [
        .library(name: "FDKClient", targets: ["FDKClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.4.4")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMinor(from: "1.3.8")),
    ],
    targets: [
        .target(
            name: "FDKClient",
            dependencies: ["Alamofire", "CryptoSwift"],
            path: "Sources"
        ),
        .testTarget(
            name: "Tests",
            dependencies: ["FDKClient"],
            path: "Tests"
        ),
    ]
)
