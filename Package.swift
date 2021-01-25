// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "dex",
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.0.0")),
        .package(url: "https://github.com/kylef/Commander.git", .upToNextMinor(from: "0.9.1")),
    ],
    targets: [
        .target(name: "dex", dependencies: ["RxSwift", "Commander"]),
    ]
)
