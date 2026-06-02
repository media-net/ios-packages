Pod::Spec.new do |s|
  s.name             = 'OMSDK_Static_Medianet'
  s.version          = '0.0.15'
  s.summary          = 'IAB OMSDK static build (Media.net vendor prefix) — distributed with MediaNetRenderer.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '14.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.0.15/OMSDK_Static_Medianet.xcframework.zip' }
  s.vendored_frameworks = 'OMSDK_Static_Medianet.xcframework'
end
