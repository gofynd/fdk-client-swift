#
# Be sure to run `pod lib lint fdk-client-swift.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'FDKClient'
  s.version          = '0.0.91'
  s.summary          = 'FDK Client SDK for Swift language'

  s.description      = 'FDK Client SDK for Swift language that can be used to make Apps or extensions.'

  s.homepage         = 'https://github.com/gofynd/fdk-client-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nikhil Manapure' => 'nikhilmanapure@gofynd.com' }
  s.source           = { :git => 'https://github.com/gofynd/fdk-client-swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.source_files = 'sdk/**/*'
  s.dependency 'Alamofire', '= 5.0.2'
  s.static_framework = true
end
