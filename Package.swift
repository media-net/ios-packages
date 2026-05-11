// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.7

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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.7/MediaNetRendererCore.xcframework.zip",
            checksum: "cd3889e75ff8abd54b639995fcf60b876d417b954ba42fb038acbc36fd527b44"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.7/MediaNetRendererPrebid.xcframework.zip",
            checksum: "3aef2d1555d78b3e86e4aac7eee7c6c3e7667959db75f65d4e149357c2078609"
        ),
    ]
)
