// swift-tools-version: 5.9
// MediaNetAdSDK — version 0.4.0

import PackageDescription

let package = Package(
    name: "MediaNetAdSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MediaNetAdSDK",
            targets: [
                "MediaNetAdSDK",
                "MNPrebidMobile",
                "OMSDK_Medianet",
                "MediaNetAdSDKGoogleAdsLink"
            ]
        ),
        // MNR-RELEASE-START — managed by ios-render-plugin/release-xcframework.sh, do not edit by hand (0.0.19)
        .library(
            name: "MediaNetRendererCore",
            targets: ["MediaNetRendererCore", "OMSDK_Medianet"]
        ),
        .library(
            name: "MediaNetRendererPrebid",
            targets: ["MediaNetRendererPrebid", "MediaNetRendererCore", "OMSDK_Medianet"]
        ),
        .library(
            name: "MediaNetRendererAdSDK",
            targets: ["MediaNetRendererAdSDK", "MediaNetRendererCore", "OMSDK_Medianet"]
        ),
        .library(
            name: "MediaNetRenderer",
            targets: ["MediaNetRendererCore", "MediaNetRendererPrebid", "OMSDK_Medianet"]
        ),
        // MNR-RELEASE-END
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads",
            from: "12.3.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "MediaNetAdSDK",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.4.0/MediaNetAdSDK.xcframework.zip",
            checksum: "6c4a649bc39947dd1d4950c7b2587ff16d8a8feefe7cddd8f6c0e3fd7df65fad"
        ),
        // Namespaced Prebid Mobile fork the wrapper links. Hosted here because a
        // binary target cannot bundle another binary's dependencies.
        .binaryTarget(
            name: "MNPrebidMobile",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.4.0/MNPrebidMobile.xcframework.zip",
            checksum: "4d954772675cc9e85b0311a7e3669a6ffaa2da20155201adf1fb8d84dbe8d222"
        ),
        // Dynamic IAB OMSDK build (independently versioned, already hosted).
        .binaryTarget(
            name: "OMSDK_Medianet",
            url: "https://github.com/media-net/ios-packages/releases/download/omsdk-medianet-1.5.5/OMSDK_Medianet.xcframework.zip",
            checksum: "2150099930947c9e4ae8c15d054396d984b3983738f0b80e743a9806a5da120a"
        ),
        // Carries the GoogleMobileAds package edge into the product link graph.
        .target(
            name: "MediaNetAdSDKGoogleAdsLink",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/MediaNetAdSDKGoogleAdsLink"
        ),
        // MNR-RELEASE-START — managed by ios-render-plugin/release-xcframework.sh, do not edit by hand (0.0.19)
        .binaryTarget(
            name: "MediaNetRendererCore",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.19/MediaNetRendererCore.xcframework.zip",
            checksum: "d6d365c6adab65d85fd43ebfddb8aa36db76999a4eb18efce4a7d5e9db2a1325"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.19/MediaNetRendererPrebid.xcframework.zip",
            checksum: "a03f0fa3c9e3596f5f73dd7d591ef596da7532fe1f2660704708624d29ca97e7"
        ),
        .binaryTarget(
            name: "MediaNetRendererAdSDK",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.19/MediaNetRendererAdSDK.xcframework.zip",
            checksum: "1ab037a916c32670f0c7806c0fa9927170f2fe0feb1a681f9f0097379d8c859f"
        ),
        // MNR-RELEASE-END
    ]
)
