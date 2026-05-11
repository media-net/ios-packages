// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.6

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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.6/MediaNetRendererCore.xcframework.zip",
            checksum: "97b5db60d11a0c76369e205a19560cc409e0c5a673e963b5ac9d1cb5878302d4"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.6/MediaNetRendererPrebid.xcframework.zip",
            checksum: "96dbe17da1b6e9e9456dd218de38e43def2a1b02841679689914d70b5ad64cc8"
        ),
    ]
)
