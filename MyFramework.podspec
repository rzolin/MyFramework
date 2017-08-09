Pod::Spec.new do |sdk|
sdk.name             = 'MyFramework'
sdk.version          = '0.1.0'
sdk.platform         = :ios, '8.0'
sdk.summary          = 'Summary'
sdk.description      = <<-DESC
Some silly description
DESC

sdk.homepage         = 'https://github.com/rzolin/MyFramework'
# sdk.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
sdk.license          = { :type => 'MIT', :file => 'LICENSE' }
sdk.author           = { 'rzolin' => 'rzolin@gmail.com' }
sdk.source           = { :git => 'https://github.com/rzolin/MyFramework.git', :tag => 'v0.1.0' }

sdk.ios.deployment_target = '8.0'

sdk.source_files = 'MyFramework/Classes/**/*','MyFramework/Classes/Data/Model.xcdatamodeld','MyFramework/Classes/Data/Model.xcdatamodeld/*.xcdatamodel'
sdk.resources      = [ 'MyFramework/Classes/Data/Model.xcdatamodeld', 'MyFramework/Classes/Data/Model.xcdatamodeld/*.xcdatamodel' ]
sdk.preserve_paths = 'MyFramework/Classes/Data/Model.xcdatamodeld'

sdk.subspec 'Core' do |sp|
sp.source_files = 'Classes/Core/**/*'
#sp.dependency 'Reachability',          '3.2'
#sp.dependency 'CocoaLumberjack',       '2.2.0'
#sp.dependency 'ReactiveCocoa',         '2.4.7'
#sp.dependency 'MBProgressHUD',         '1.0.0'
#sp.dependency 'MHHabitat'
#sp.dependency 'GBDeviceInfo',          '4.3.0'
#sp.dependency 'NSData+Base64',         '1.0.0'
#sp.dependency 'NSDate-Extensions',     '0.0.1'
#sp.dependency 'NUI',                   '0.5.5'
#sp.dependency 'libextobjc',            '0.4.1'
#sp.dependency 'PonyDebugger',          '0.4.5'
#sp.dependency 'UICKeyChainStore',      '2.1.1'
#sp.dependency 'IDMAlertViewManager',   '1.1'
#sp.dependency 'TransformerKit',        '0.5.4'
#sp.dependency 'Firebase',              '3.11.0'
#sp.dependency 'Firebase/Crash'
end

sdk.subspec 'Data' do |sp|
sp.source_files = 'Classes/Data/**/*'
#sp.dependency 'MagicalRecord',         '2.3.2'
#sp.dependency 'FMDB/FTS'
end

sdk.subspec 'Security' do |sp|
sp.source_files = 'Classes/Security/**/*'
end

sdk.subspec 'Utils' do |sp|
sp.source_files = 'Classes/Utils/**/*'
end

sdk.subspec 'Documents' do |sp|
sp.source_files = 'Classes/Documents/**/*'
end

sdk.subspec 'Networking' do |sp|
sp.source_files = 'Classes/Networking/**/*'
# sp.dependency 'RestKit', '0.27.4'
end

sdk.default_subspecs = 'Core', 'Security', 'Data', 'Networking', 'Utils', 'Documents'

# sdk.resource_bundles = {
#   'MyFramework' => ['MyFramework/Assets/*.png']
# }

# sdk.public_header_files = 'Pod/Classes/**/*.h'
sdk.frameworks = 'Security', 'CFNedtwork', 'MobileCoreServices', 'Foundation', 'UIKit', 'QuartzCore', 'SystemConfiguration', 'MediaPlayer', 'CoreData', 'CoreGraphics'

end
