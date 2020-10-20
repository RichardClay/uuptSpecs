#
# Be sure to run `pod lib lint GNRCoreKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GNRCoreKit'
  s.version          = '0.2.9'
  s.summary          = 'UU跑腿iOS公用核心组件 GNRCoreKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.oschina.net/uupt/GNRCoreKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '750460196@qq.com' => 'sun' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangwenbin/GNRCoreKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'GNRCoreKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GNRCoreKit' => ['GNRCoreKit/Assets/*.png']
  # }

  s.public_header_files = 'GNRCoreKit/Classes/**/*.h'
  s.dependency 'Masonry'

end
