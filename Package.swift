// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.13

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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.13/MediaNetRendererCore.xcframework.zip",
            checksum: "be92072a7f54f2b7fef64b898b2b851376d1c26f241b1c65780efb995dc6f5e1"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.13/MediaNetRendererPrebid.xcframework.zip",
            checksum: "bf9865990ee0c7ad9a933925131627688fa59e6f36f48c838a5f2d608ef66ffc"
        ),
        // OMSDK is referenced by Core via @_implementationOnly import. SPM
        // cannot wire binaryTarget→binaryTarget dependencies, so we list
        // OMSDK alongside Core in every product instead. Without this slot
        // SPM consumers hit "unable to resolve module dependency:
        // 'OMSDK_Static_Medianet'" the moment they integrate the package.
        .binaryTarget(
            name: "OMSDK_Static_Medianet",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.13/OMSDK_Static_Medianet.xcframework.zip",
            checksum: "6d130c3c1deedbb07f9daa8378a0ec119d742ff0be2c381c45545b1192d929f0"
        ),
    ]
)
