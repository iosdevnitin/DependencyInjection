// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "DependencyInjection",
    platforms: [
        .iOS(.v13), .macOS(.v11)
    ],
    products: [
        .library(
            name: "DependencyInjection",
            targets: ["DependencyInjection"]
        ),
    ],
    targets: [
        .target(
            name: "DependencyInjection",
            dependencies: []
        ),
    ]
)

