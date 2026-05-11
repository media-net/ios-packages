// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.9

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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.9/MediaNetRendererCore.xcframework.zip",
            checksum: "6038832d7503ae212bfeac11012b1094351ac532d5b342bbce50caef0d9e4567"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.9/MediaNetRendererPrebid.xcframework.zip",
            checksum: "f22e1cf4d1c4d8cfbb9b5c30c9e55accfd4d7a4a040b5c60cbb11933cfff0d7e"
        ),
    ]
)
