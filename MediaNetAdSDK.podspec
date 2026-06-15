Pod::Spec.new do |s|
  s.name             = 'MediaNetAdSDK'
  s.version          = '0.4.3'
  s.summary          = 'MediaNetAdSDK — Media.net advertising SDK for iOS.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'CUSTOM' }
  s.author           = { 'Media.net' => 'sdk-dev@media.net' }
  s.platform         = :ios, '13.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.4.3/MediaNetAdSDK.xcframework.zip' }
  s.vendored_frameworks = 'MediaNetAdSDK.xcframework'
  s.static_framework = true
  s.dependency 'MNPrebidMobile', '0.4.3'
  s.dependency 'Google-Mobile-Ads-SDK', '~> 12.3.0'
  s.dependency 'OMSDK_Medianet', '1.5.5'
end
