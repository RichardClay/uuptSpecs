#
# Be sure to run `pod lib lint UUBaseLBSLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UUBaseLBSLib'
  s.version          = '0.1.4'
  s.summary          = 'UUiOS LBS 基础服务组件-百度地图.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'UUiOS LBS 基础服务组件-百度地图'
  s.homepage         = 'http://uugit.uupt.com/zhangwenbin/UUBaseLBSLib.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangwenbin' => '750460196@qq.com' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangwenbin/UUBaseLBSLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.vendored_frameworks = 'UUBaseLBSLib/Classes/BaiduMapKit/*.framework'
  s.vendored_libraries  = 'UUBaseLBSLib/Classes/BaiduMapKit/thirdlibs/*.a'
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.frameworks          = 'CoreLocation', 'CoreGraphics', 'OpenGLES','QuartzCore','Security','SystemConfiguration','Accelerate'
  s.libraries           = 'z', 'sqlite3.0', 'c++'
   s.resource_bundles = {
     'UUBaseLBSLib' => ['UUBaseLBSLib/Classes/BaiduMapKit/BaiduMapAPI_Map.framework/*.bundle']
   }
end
