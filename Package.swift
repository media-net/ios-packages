// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.16

import PackageDescription

let package = Package(
    name: "MediaNetRenderer",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Umbrella product — pulls Core + Prebid + OMSDK in one ref.
        // This is the integration the Google Doc guide recommends.
        .library(
            name: "MediaNetRenderer",
            targets: ["MediaNetRendererCore", "MediaNetRendererPrebid", "OMSDK_Medianet"]
        ),
        // Core-only product — for non-Prebid integrations. Still ships
        // OMSDK alongside since Core's .private.swiftinterface imports it.
        .library(
            name: "MediaNetRendererCore",
            targets: ["MediaNetRendererCore", "OMSDK_Medianet"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MediaNetRendererCore",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.16/MediaNetRendererCore.xcframework.zip",
            checksum: "689d5e1e8cb6c8897a0632462928838a5cf839ee48715aa2c214b11febf37ce2"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.16/MediaNetRendererPrebid.xcframework.zip",
            checksum: "a54d9fd0ab21a134e0cb7cc61a7254d4eb9fc66bf06eee0e10fe9ff4bdd6d74a"
        ),
        // OMSDK is referenced by Core via @_implementationOnly import. SPM
        // cannot wire binaryTarget→binaryTarget dependencies, so we list
        // OMSDK alongside Core in every product instead. Without this slot
        // SPM consumers hit "unable to resolve module dependency:
        // 'OMSDK_Medianet'" the moment they integrate the package. This is the
        // external, independently-versioned dynamic OMID artifact.
        .binaryTarget(
            name: "OMSDK_Medianet",
            url: "https://github.com/media-net/ios-packages/releases/download/omsdk-medianet-1.5.5/OMSDK_Medianet.xcframework.zip",
            checksum: "2150099930947c9e4ae8c15d054396d984b3983738f0b80e743a9806a5da120a"
        ),
    ]
)
