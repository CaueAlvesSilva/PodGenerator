// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PodGenerator",
    dependencies: [
        .package(url: "https://github.com/johnsundell/files.git", from: "4.0.0"),
    ],
    targets: [
        .target(name: "PodGenerator", dependencies: ["Files"])
    ]
)
