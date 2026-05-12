Pod::Spec.new do |s|
  s.name             = 'MediaNetRendererPrebid'
  s.version          = '0.0.12'
  s.summary          = 'Prebid SDK plugin renderer adapter on top of MediaNetRendererCore.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '14.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.0.12/MediaNetRendererPrebid.xcframework.zip' }
  s.vendored_frameworks = 'MediaNetRendererPrebid.xcframework'
  s.dependency 'MediaNetRendererCore', '0.0.12'
  s.dependency 'PrebidMobile', '>= 2.4.0'
  s.frameworks       = 'WebKit', 'SafariServices'
  s.weak_frameworks  = 'AdSupport', 'AppTrackingTransparency', 'CoreLocation'
end
