Pod::Spec.new do |s|
  s.name             = 'MediaNetRenderer'
  s.version          = '0.0.10'
  s.summary          = 'Media.net renderer for the Prebid Mobile iOS SDK (umbrella).'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '13.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/archive/refs/tags/v0.0.10.zip' }
  s.dependency 'MediaNetRendererCore',   '0.0.10'
  s.dependency 'MediaNetRendererPrebid', '0.0.10'
end
