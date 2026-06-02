Pod::Spec.new do |s|
  s.name             = 'MediaNetRendererCore'
  s.version          = '0.0.15'
  s.summary          = 'Prebid-ignorant rendering core for the Media.net renderer.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '14.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.0.15/MediaNetRendererCore.xcframework.zip' }
  s.vendored_frameworks = 'MediaNetRendererCore.xcframework'
  # OMSDK is shipped as a sibling pod (`OMSDK_Static_Medianet`) instead of
  # being bundled inline. Earlier versions tried to fetch the OMSDK zip via
  # `s.prepare_command` (curl + unzip) so a single pod brought both
  # xcframeworks — that triggered an HTTP 500 on `pod trunk push` because
  # Trunk's security policy rejects podspecs with network-reaching
  # prepare_command blocks. Splitting into a sibling pod keeps the
  # integration UX identical (`pod 'MediaNetRendererCore'` still pulls
  # both) without tripping that policy.
  s.dependency 'OMSDK_Static_Medianet', '0.0.15'
  s.frameworks       = 'WebKit', 'SafariServices'
  s.weak_frameworks  = 'AdSupport', 'AppTrackingTransparency', 'CoreLocation'
end
