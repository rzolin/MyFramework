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
sdk.source           = { :git => 'https://github.com/rzolin/MyFramework.git', :tag => sdk.version.to_s }

sdk.ios.deployment_target = '8.0'

sdk.source_files = 'MyFramework/Classes/**/*','MyFramework/Classes/Data/Model.xcdatamodeld','MyFramework/Classes/Data/Model.xcdatamodeld/*.xcdatamodel'
sdk.resources      = [ 'MyFramework/Classes/Data/Model.xcdatamodeld', 'MyFramework/Classes/Data/Model.xcdatamodeld/*.xcdatamodel' ]
sdk.preserve_paths = 'MyFramework/Classes/Data/Model.xcdatamodeld'

# sdk.resource_bundles = {
#   'MyFramework' => ['MyFramework/Assets/*.png']
# }

# sdk.public_header_files = 'Pod/Classes/**/*.h'
sdk.frameworks = 'Security', 'CFNedtwork', 'MobileCoreServices', 'Foundation', 'UIKit', 'QuartzCore', 'SystemConfiguration', 'MediaPlayer', 'CoreData', 'CoreGraphics'

end
