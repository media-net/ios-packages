// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.5

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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.5/MediaNetRendererCore.xcframework.zip",
            checksum: "c0eb2ced44a912d548db2b8d46ce999a71934f0819dc389bb42d94f1e4228c22"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.5/MediaNetRendererPrebid.xcframework.zip",
            checksum: "9fcace7e998ceb872e2c292ad8144d3e6d7770a1f414a269642c722d876a6abb"
        ),
    ]
)
