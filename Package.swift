// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.15

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
            targets: ["MediaNetRendererCore", "MediaNetRendererPrebid", "OMSDK_Static_Medianet"]
        ),
        // Core-only product — for non-Prebid integrations. Still ships
        // OMSDK alongside since Core's .private.swiftinterface imports it.
        .library(
            name: "MediaNetRendererCore",
            targets: ["MediaNetRendererCore", "OMSDK_Static_Medianet"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MediaNetRendererCore",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.15/MediaNetRendererCore.xcframework.zip",
            checksum: "378cf306dee39d8230dcd059dab703ca36c333a17353c246457fc98edec81176"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.15/MediaNetRendererPrebid.xcframework.zip",
            checksum: "259b313d45096d088efc192b2d4786c65ef0d9ad71446d798439e93d510c1a45"
        ),
        // OMSDK is referenced by Core via @_implementationOnly import. SPM
        // cannot wire binaryTarget→binaryTarget dependencies, so we list
        // OMSDK alongside Core in every product instead. Without this slot
        // SPM consumers hit "unable to resolve module dependency:
        // 'OMSDK_Static_Medianet'" the moment they integrate the package.
        .binaryTarget(
            name: "OMSDK_Static_Medianet",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.15/OMSDK_Static_Medianet.xcframework.zip",
            checksum: "79fb642fd15d09a38cabd1ef255800708e034bd9b535c52eb4b617fa9ac25926"
        ),
    ]
)
