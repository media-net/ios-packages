# FROZEN at 0.4.7 — this repo is renderer-only since the 2026-07 repo split.
# New MediaNetAdSDK/MNPrebidMobile versions live at https://github.com/media-net/MediaNetAdSDK-dist
Pod::Spec.new do |s|
  s.name             = 'MNPrebidMobile'
  s.version          = '0.4.7'
  s.summary          = 'Namespaced Prebid Mobile fork used by MediaNetAdSDK.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '13.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.4.7/MNPrebidMobile.xcframework.zip' }
  s.vendored_frameworks = 'MNPrebidMobile.xcframework'
  s.frameworks       = 'WebKit', 'SafariServices'
  s.weak_frameworks  = 'AdSupport', 'AppTrackingTransparency', 'CoreLocation'
end
