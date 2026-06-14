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
        // MNR-RELEASE-START — managed by ios-render-plugin/release-xcframework.sh, do not edit by hand (0.0.20)
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
        // MNR-RELEASE-START — managed by ios-render-plugin/release-xcframework.sh, do not edit by hand (0.0.20)
        .binaryTarget(
            name: "MediaNetRendererCore",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.20/MediaNetRendererCore.xcframework.zip",
            checksum: "22597327245151238d5cc87d144b7e800e85f3c2cc67b9e422915e05f6ced5e4"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.20/MediaNetRendererPrebid.xcframework.zip",
            checksum: "9f40d8d041ab2b6365202aaa0902eed2bdedae9730f583bc32fa0b032c2e1845"
        ),
        .binaryTarget(
            name: "MediaNetRendererAdSDK",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.20/MediaNetRendererAdSDK.xcframework.zip",
            checksum: "d71fc3b5be6346e24cee527b25e768b184bdc47faf68a8fd58cb0e74da6d8212"
        ),
        // MNR-RELEASE-END
    ]
)
