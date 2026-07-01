// swift-tools-version: 5.9
// MediaNetAdSDK — version 0.4.7

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
        // MNR-RELEASE-START — managed by ios-render-plugin/release-xcframework.sh, do not edit by hand (0.0.23)
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
            url: "https://github.com/media-net/ios-packages/releases/download/v0.4.7/MediaNetAdSDK.xcframework.zip",
            checksum: "a31c5421b3c2c7ef7dea6faced5e5a5c2d0d66536518deaede1ba773e3873a1a"
        ),
        // Namespaced Prebid Mobile fork the wrapper links. Hosted here because a
        // binary target cannot bundle another binary's dependencies.
        .binaryTarget(
            name: "MNPrebidMobile",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.4.7/MNPrebidMobile.xcframework.zip",
            checksum: "62f54bdcb246fad585431af11be12d85039bed47ab0e64e9a4882fc550c18203"
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
        // MNR-RELEASE-START — managed by ios-render-plugin/release-xcframework.sh, do not edit by hand (0.0.23)
        .binaryTarget(
            name: "MediaNetRendererCore",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.23/MediaNetRendererCore.xcframework.zip",
            checksum: "4c79c1193f59c5853758842b150806fa83675b28d2342cd7bfea614dc99c4505"
        ),
        .binaryTarget(
            name: "MediaNetRendererPrebid",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.23/MediaNetRendererPrebid.xcframework.zip",
            checksum: "6e8e1ba307ac39616b357e58ed37ab2357ae2069f682fcde8fece4b2a2af666e"
        ),
        .binaryTarget(
            name: "MediaNetRendererAdSDK",
            url: "https://github.com/media-net/ios-packages/releases/download/v0.0.23/MediaNetRendererAdSDK.xcframework.zip",
            checksum: "73e1f4a8f5135d43915bf9dc602a839e29999e7d8486e5178dfe61311d1d4404"
        ),
        // MNR-RELEASE-END
    ]
)
