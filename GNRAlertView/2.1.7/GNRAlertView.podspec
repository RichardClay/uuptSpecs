#
# Be sure to run `pod lib lint GNRAlertView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GNRAlertView'
  s.version          = '2.1.7'
  s.summary          = 'UU跑腿iOS公用组件 GNRAlertView'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here. UU跑腿iOS公用组件 GNRAlertView.
                       DESC

  s.homepage         = 'http://uugit.uupt.com/zhangyongjie/GNRAlertView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'huagongzi2011@126.com' => 'hua0007' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangyongjie/GNRAlertView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/ly918'

  s.ios.deployment_target = '9.0'

  s.source_files = 'GNRAlertView/Classes/**/*'
  
#  s.resource_bundles = {
#    'GNRAlertView' => ['GNRAlertView/Assets/*.png']
#}

  s.public_header_files = 'GNRAlertView/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'GNRCoreKit'

end
