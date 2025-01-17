// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDWebImageAVIFCoder",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SDWebImageAVIFCoder",
            targets: ["SDWebImageAVIFCoder"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.14.2"),
        .package(url: "https://github.com/SDWebImage/libavif-Xcode.git", from: "0.10.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SDWebImageAVIFCoder",
            dependencies: ["SDWebImage",
                           .product(name: "libavif", package: "libavif-Xcode"),],
            path: ".",
            sources: ["SDWebImageAVIFCoder/Classes"],
            publicHeadersPath: "SDWebImageAVIFCoder/Classes/Public"
        )
    ]
)
