Pod::Spec.new do |s|
  s.name             = 'MediaNetRendererCore'
  s.version          = '0.0.14'
  s.summary          = 'Prebid-ignorant rendering core for the Media.net renderer.'
  s.homepage         = 'https://github.com/media-net/ios-packages'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Media.net' => 'mobile@media.net' }
  s.platform         = :ios, '14.0'
  # Source must download both xcframework zips (Core + OMSDK). CocoaPods'
  # `:http` source accepts only one URL — we ship both as a single zipped
  # bundle by referencing the Core zip and using `prepare_command` to fetch
  # the OMSDK zip alongside. Both zips end up vendored in the pod root.
  s.source           = { :http => 'https://github.com/media-net/ios-packages/releases/download/v0.0.14/MediaNetRendererCore.xcframework.zip' }
  s.prepare_command  = "curl -fsSL -o omsdk.zip 'https://github.com/media-net/ios-packages/releases/download/v0.0.14/OMSDK_Static_Medianet.xcframework.zip' && unzip -qo omsdk.zip && rm -f omsdk.zip"
  s.vendored_frameworks = 'MediaNetRendererCore.xcframework', 'OMSDK_Static_Medianet.xcframework'
  s.frameworks       = 'WebKit', 'SafariServices'
  s.weak_frameworks  = 'AdSupport', 'AppTrackingTransparency', 'CoreLocation'
end
