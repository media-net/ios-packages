// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.11

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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.11/MediaNetRendererCore.xcframework.zip",
            checksum: "6c0b38f9606dc010a515f529fcef405784253be310371578000e1912d4befdb3"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.11/MediaNetRendererPrebid.xcframework.zip",
            checksum: "0ffa8c2bca2c5e6edd14a12c77cce95e63cab6e2206a4172707f7795374a54a1"
        ),
    ]
)
