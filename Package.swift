// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.8

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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.8/MediaNetRendererCore.xcframework.zip",
            checksum: "7f82bfeed579d16ea27c19638b696c9003b0c867f6e1fc95031536f8a9df6375"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.8/MediaNetRendererPrebid.xcframework.zip",
            checksum: "025bc647775b428567fe75d72306f9b9ebd3209ecf29cb53651bee2d5716bad3"
        ),
    ]
)
