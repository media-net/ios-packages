// swift-tools-version: 5.9
// MediaNetRenderer — version 0.0.14

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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.14/MediaNetRendererCore.xcframework.zip",
            checksum: "ad1f48b5740f388ba072a6b393c58ca0a510576f98524a90f35c2d9401624e72"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.14/MediaNetRendererPrebid.xcframework.zip",
            checksum: "732d7561a4db31365a27fbc128cbf9768ccb561b0ac2e2bf1e723855d4cbbe14"
        ),
        // OMSDK is referenced by Core via @_implementationOnly import. SPM
        // cannot wire binaryTarget→binaryTarget dependencies, so we list
        // OMSDK alongside Core in every product instead. Without this slot
        // SPM consumers hit "unable to resolve module dependency:
        // 'OMSDK_Static_Medianet'" the moment they integrate the package.
        .binaryTarget(
            name: "OMSDK_Static_Medianet",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.14/OMSDK_Static_Medianet.xcframework.zip",
            checksum: "e9bfdcc55a78e03a41901ceb688a4e2805f217460a0e92835226485d0161096e"
        ),
    ]
)
