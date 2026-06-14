Pod::Spec.new do |s|
  s.name             = 'MediaNetRendererAdSDK'
  s.version          = '0.0.19'
  s.summary          = 'MediaNetAdSDK wrapper plugin renderer adapter on top of MediaNetRendererCore.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '14.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.0.19/MediaNetRendererAdSDK.xcframework.zip' }
  s.vendored_frameworks = 'MediaNetRendererAdSDK.xcframework'
  s.dependency 'MediaNetRendererCore', '0.0.19'
  # MediaNetAdSDK is the publisher wrapper SDK from media-net/ios-packages.
  # The binary xcframework's swiftinterface declares `import MediaNetAdSDK`,
  # so consumers must have the module available. Floor matches the wrapper
  # release that introduced the public plugin-renderer protocol this adapter
  # conforms to; raise only when a breaking wrapper-side change lands.
  s.dependency 'MediaNetAdSDK', '>= 0.3.0'
  s.frameworks       = 'WebKit', 'SafariServices'
  s.weak_frameworks  = 'AdSupport', 'AppTrackingTransparency', 'CoreLocation'
end
