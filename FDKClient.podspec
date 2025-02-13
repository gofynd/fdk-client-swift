#
# Be sure to run `pod lib lint fdk-client-swift.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'FDKClient'
  s.version          = '3.0.0-beta.6'
  s.summary          = 'FDK Client SDK for Swift language'

  s.description      = 'FDK Client SDK for Swift language that can be used to make Apps or extensions.'

  s.homepage         = 'https://github.com/gofynd/fdk-client-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shopsense Retail Technologies Limited' => 'shopsense@icloud.com' }
  s.source           = { :git => 'https://github.com/gofynd/fdk-client-swift.git', :tag => s.version.to_s }

  s.swift_versions = '4.0'
  s.ios.deployment_target = '12.0'

  s.static_framework = true
  s.dependency 'CryptoSwift', '~> 1.3.8'

  s.subspec 'Common' do |subspec|
    subspec.source_files = 'Sources/code/common/**/*'
    subspec.dependency 'Alamofire', '= 5.4.4'
  end

  s.subspec 'Application' do |subspec|
    subspec.source_files = 'Sources/code/application/**/*'
    subspec.dependency 'FDKClient/Common'
  end

  s.subspec 'Platform' do |subspec|
    subspec.source_files = 'Sources/code/platform/**/*'
    subspec.dependency 'FDKClient/Common'
  end

  s.subspec 'Public' do |subspec|
    subspec.source_files = 'Sources/code/public/**/*'
    subspec.dependency 'FDKClient/Common'
  end
end
