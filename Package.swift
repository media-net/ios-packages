// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.12

import PackageDescription

let package = Package(
    name: "MediaNetRenderer",
    platforms: [
        .iOS(.v14)
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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.12/MediaNetRendererCore.xcframework.zip",
            checksum: "4cedaf8e2d37e83ab6f5cc671a103293b036e46d54a805f81d5c00e2dd13da88"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.12/MediaNetRendererPrebid.xcframework.zip",
            checksum: "c640bcbd324c6e9f2ef0beed4c83fc05278f8e41dbddc4410aaf869a738135aa"
        ),
    ]
)
