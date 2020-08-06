#
# Be sure to run `pod lib lint GNRPickCard.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GNRPickCard'
  s.version          = '0.1.6'
  s.summary          = '陈爽说的选项卡~~'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    通用的选项卡，可以自定义哦，适配了iPhoneX~~
                       DESC

  s.homepage         = 'http://uugit.uupt.com/zhangyongjie/GNRPickCard'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '455194872@qq.com' => 'shuishangmusheng' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangyongjie/GNRPickCard.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/ly918'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GNRPickCard/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GNRPickCard' => ['GNRPickCard/Assets/*.png']
  # }

  s.public_header_files = 'GNRPickCard/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'GNRCoreKit'
  s.dependency 'Masonry'
  s.dependency 'SDWebImage'

end
