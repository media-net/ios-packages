// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.10

import PackageDescription

let package = Package(
    name: "MediaNetRenderer",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MediaNetRenderer",
            targets: ["MediaNetRendererCore", "MediaNetRendererPrebid"]
        ),
        .library(
            name: "MediaNetRendererCore",
            targets: ["MediaNetRendererCore"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MediaNetRendererCore",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.10/MediaNetRendererCore.xcframework.zip",
            checksum: "ace5799c26df79d57edd5b0144c991a35444cb0a106a29e146377ac31a3ffdcc"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.10/MediaNetRendererPrebid.xcframework.zip",
            checksum: "e13bde90aa28b06d17e9e1d5646330c1f86a9188b41c85ccc57db9868b871f0d"
        ),
    ]
)
