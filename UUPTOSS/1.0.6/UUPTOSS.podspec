#
# Be sure to run `pod lib lint UUPTOSS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UUPTOSS'
  s.version          = '1.0.6'
  s.summary          = 'UU阿里云OSS公共组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'UU跑腿阿里云OSS公共组件库'

  s.homepage         = 'http://uugit.uupt.com/guoruihua/UUPTOSS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'guoruihua' => '941197579@qq.com' }
  s.source           = { :git => 'http://uugit.uupt.com/guoruihua/UUPTOSS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'UUPTOSS/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UUPTOSS' => ['UUPTOSS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AliyunOSSiOS', '2.10.8'
end
