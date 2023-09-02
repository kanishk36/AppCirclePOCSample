Pod::Spec.new do |s|
s.name         = "MFSDKHybridKit"
s.version      = "2.7.43"
s.summary      = "Morfeus messaging framework for hybrid."
s.description  = <<-DESC
Morfeus messaging framework for hybrid. Cheers
DESC
s.homepage     = "https://active.ai"
s.license      = { :type => "MIT", :file => "license" }
s.author             = { "active ai" => "mobile.release@active.ai" }
s.ios.deployment_target = '9.0'
#s.platform     = :ios, '7.1'
s.ios.vendored_frameworks = 'MFSDKMessagingKit.framework'
s.source = { :http => 'http://repo.active.ai/artifactory/resources/mobile/sdk-release/com/activeai/iOS/MFSDKHybridKit/2.7.43/MFSDKHybridKit.zip' }
s.exclude_files = "Classes/Exclude"
s.resources = ["MFSDKMessagingKit.framework/MFSDKMessagingKit.momd","MFSDKMessagingKit.framework/MFSDKMessagingKit.momd/*","MFSDKMessagingKit.framework/MFLanguages.json","MFSDKMessagingKit.framework/MFLanguages.json/*","Resources/*.json"]
s.dependency 'MorfeusVoiceKit'
s.dependency 'Realm', '~>10'
s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
