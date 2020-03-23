// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PodGenerator",
    platforms: [
        .macOS(.v10_13),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/files.git", from: "4.0.0"),
    ],
    targets: [
        .target(name: "PodGenerator", dependencies: ["Files"])
    ]
)
