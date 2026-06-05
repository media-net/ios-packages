Pod::Spec.new do |s|
  s.name             = 'MediaNetRendererCore'
  s.version          = '0.0.16'
  s.summary          = 'Prebid-ignorant rendering core for the Media.net renderer.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '14.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.0.16/MediaNetRendererCore.xcframework.zip' }
  s.vendored_frameworks = 'MediaNetRendererCore.xcframework'
  # OMID comes from the external, independently-versioned `OMSDK_Medianet`
  # pod (the dynamic IAB OMSDK build Core imports). `pod 'MediaNetRendererCore'`
  # transitively pulls + embeds it; it is not bundled or built by this release.
  s.dependency 'OMSDK_Medianet', '1.5.5'
  s.frameworks       = 'WebKit', 'SafariServices'
  s.weak_frameworks  = 'AdSupport', 'AppTrackingTransparency', 'CoreLocation'
end
