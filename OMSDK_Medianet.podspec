Pod::Spec.new do |s|
  s.name             = 'OMSDK_Medianet'
  s.version          = '1.5.5'
  s.summary          = 'IAB OMSDK dynamic build (Media.net vendor prefix).'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '11.0'
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/omsdk-medianet-1.5.5/OMSDK_Medianet.xcframework.zip' }
  s.vendored_frameworks = 'OMSDK_Medianet.xcframework'
end
