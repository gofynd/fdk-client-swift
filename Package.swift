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
