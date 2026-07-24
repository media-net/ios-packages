# ios-packages — MediaNetRenderer distribution

Public binary distribution repo for the **Media.net renderer plugin**
(`MediaNetRenderer`, `MediaNetRendererCore`, `MediaNetRendererPrebid`,
`MediaNetRendererAdSDK`).

> **Repo split (2026-07):** this repo is **renderer-only from `v0.5.0`**.
> It previously also distributed the `MediaNetAdSDK` wrapper — those releases
> now live at [`media-net/MediaNetAdSDK-dist`](https://github.com/media-net/MediaNetAdSDK-dist)
> (starting `0.4.8`). Everything already published here stays published — see
> "Legacy artifacts" below.

## Install (SPM)

```swift
.package(url: "https://github.com/media-net/ios-packages", .upToNextMinor(from: "0.5.0"))
```

Products: `MediaNetRenderer` (umbrella, Core + Prebid), `MediaNetRendererCore`,
`MediaNetRendererPrebid`, `MediaNetRendererAdSDK` (wrapper flavor).

From `0.5.0` the manifest transitively pulls, automatically:
- [`OMSDK-Medianet-dist`](https://github.com/media-net/OMSDK-Medianet-dist) —
  the shared dynamic IAB OMSDK build (embedded once).
- [`MediaNetAdSDK-dist`](https://github.com/media-net/MediaNetAdSDK-dist) —
  only for the `MediaNetRendererAdSDK` flavor (its binary imports
  `MediaNetAdSDK`); consumers no longer add the wrapper product manually.

## Install (CocoaPods)

```ruby
pod 'MediaNetRenderer', '~> 0.5.0'            # umbrella (Core + Prebid)
# or the AdSDK flavor:
pod 'MediaNetRendererAdSDK', '~> 0.5.0'
```

Pods resolve by name from CocoaPods trunk — the repo split does not affect
Podfiles beyond version bumps.

## ⚠️ Migration — MediaNetAdSDK SPM consumers

If your app consumed the **`MediaNetAdSDK`** product from THIS repo, your pin
keeps working as long as it stays on a `0.3.0`–`0.4.7` tag. But manifests from
`v0.5.0` no longer contain that product, so an open range like
`.upToNextMajor(from: "0.4.6")` will fail on your next `swift package update`
with an error like:

```
product 'MediaNetAdSDK' required by package '<your-app>' target '<your-target>'
not found in package 'ios-packages'.
```

**Fix — repoint the package URL (one line):**

```swift
// before
.package(url: "https://github.com/media-net/ios-packages", from: "0.4.6")
// after
.package(url: "https://github.com/media-net/MediaNetAdSDK-dist", from: "0.4.8")
```

Do **not** keep both references: a graph containing MediaNetAdSDK-dist AND an
ios-packages tag ≤ `0.4.7` declares the `MediaNetAdSDK` product twice and fails
resolution. This also applies transitively — `MediaNetFoxSDK ≤ 0.0.6` pins
ios-packages `0.4.7`, so upgrade Fox to `0.0.7+` before adding
MediaNetAdSDK-dist directly.

## Legacy artifacts (kept forever, frozen)

Nothing has been deleted. The following remain permanently resolvable:

- **Wrapper tags `v0.3.0`–`v0.4.7`** + their `MediaNetAdSDK.xcframework.zip` /
  `MNPrebidMobile.xcframework.zip` assets (SPM `exact:` pins and CocoaPods
  `MediaNetAdSDK`/`MNPrebidMobile` ≤ `0.4.7` keep working).
- **`omsdk-medianet-1.5.5`** release + asset — the CocoaPods `OMSDK_Medianet`
  `1.5.5` pod downloads from here; the canonical SPM home is now
  [`OMSDK-Medianet-dist`](https://github.com/media-net/OMSDK-Medianet-dist)
  (byte-identical artifact, same checksum).
- **`OMSDK_Static_Medianet` `0.0.15`** asset (tag `v0.0.15`) — kept for the pod
  of the same name.
- The legacy podspec files on `main` (`MediaNetAdSDK.podspec`,
  `MNPrebidMobile.podspec`, `OMSDK_Medianet.podspec`,
  `OMSDK_Static_Medianet.podspec`) are **frozen** at their final versions for
  raw-URL `:podspec =>` consumers; new versions live in the new repos.
