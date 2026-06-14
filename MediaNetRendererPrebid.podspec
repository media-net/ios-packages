Pod::Spec.new do |s|
  s.name             = 'MediaNetRendererPrebid'
  s.version          = '0.0.20'
  s.summary          = 'Prebid SDK plugin renderer adapter on top of MediaNetRendererCore.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '14.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.0.20/MediaNetRendererPrebid.xcframework.zip' }
  s.dependency 'MediaNetRendererCore', '0.0.20'
  s.frameworks       = 'WebKit', 'SafariServices'
  s.weak_frameworks  = 'AdSupport', 'AppTrackingTransparency', 'CoreLocation'

  s.default_subspecs = ['Default']

  # `Core` — vendors the xcframework but does NOT pull PrebidMobile. Use this
  # when your project already integrates PrebidMobile through another channel
  # (SPM, manually-vendored xcframework, custom pod). Integration:
  #   pod 'MediaNetRendererPrebid/Core'
  s.subspec 'Core' do |core|
    core.vendored_frameworks = 'MediaNetRendererPrebid.xcframework'
  end

  # `Default` — the canonical integration: `pod 'MediaNetRendererPrebid'`.
  # Adds the public PrebidMobile pod on top of Core.
  s.subspec 'Default' do |default|
    default.dependency 'MediaNetRendererPrebid/Core'
    default.dependency 'PrebidMobile', '>= 2.4.0'
  end
end
