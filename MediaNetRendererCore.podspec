Pod::Spec.new do |s|
  s.name             = 'MediaNetRendererCore'
  s.version          = '0.0.5'
  s.summary          = 'Prebid-ignorant rendering core for the Media.net renderer.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '13.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.0.5/MediaNetRendererCore.xcframework.zip' }
  s.vendored_frameworks = 'MediaNetRendererCore.xcframework'
  s.frameworks       = 'WebKit', 'SafariServices'
  s.weak_frameworks  = 'AdSupport', 'AppTrackingTransparency', 'CoreLocation'
end
