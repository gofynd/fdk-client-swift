// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "code",
    platforms: [
        .iOS(.v11), .macOS(.v10_12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "code",
            targets: ["code"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
            .package(url: "https://github.com/Alamofire/Alamofire.git", .branch("feature/linux-support")),
            .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMinor(from: "1.3.8")),
            //.package(url: "https://github.com/jernejstrasner/SwiftCrypto.git", from: "1.0.1"),
            //.package(url: "https://github.com/kmussel/ccommoncrypto.git", from: "0.0.1"),//from: "5.0.2")
            //.package(url: "https://github.com/venj/CommonCrypto.git", from: "0.3.0"),
            //.package(name: "CCommonCrypto", url: "https://github.com/jernejstrasner/CCommonCrypto.git", .branch("master")),//versions: Version(0,3,0) ..< Version(1,0,0))) 
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "code",
            dependencies: ["Alamofire","CryptoSwift"]),
        .testTarget(
            name: "codeTests",
            dependencies: ["code"]),
    ]
)
