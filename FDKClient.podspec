#
# Be sure to run `pod lib lint fdk-client-swift.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'FDKClient'
  s.version          = '0.0.401'
  s.summary          = 'FDK Client SDK for Swift language'

  s.description      = 'FDK Client SDK for Swift language that can be used to make Apps or extensions.'

  s.homepage         = 'https://github.com/gofynd/fdk-client-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nikhil Manapure' => 'nikhilmanapure@gofynd.com' }
  s.source           = { :git => 'https://github.com/gofynd/fdk-client-swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.0'

  s.static_framework = true

  s.subspec 'Common' do |subspec|
    subspec.source_files = 'sdk/common/**/*'
    subspec.dependency 'Alamofire', '= 5.0.2'
  end

  s.subspec 'Application' do |subspec|
    subspec.source_files = 'sdk/application/**/*'
    subspec.dependency 'FDKClient/Common'
  end

  s.subspec 'Platform' do |subspec|
    subspec.source_files = 'sdk/platform/**/*'
    subspec.dependency 'FDKClient/Common'
  end
end
