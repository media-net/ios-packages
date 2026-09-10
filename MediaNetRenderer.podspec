Pod::Spec.new do |s|
  s.name             = 'MediaNetRenderer'
  s.version          = '1.0.0'
  s.summary          = 'Media.net renderer for the Prebid Mobile iOS SDK (umbrella).'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '14.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/archive/refs/tags/v1.0.0.zip' }
  s.dependency 'MediaNetRendererCore',   '1.0.0'
  s.dependency 'MediaNetRendererPrebid', '1.0.0'
end
