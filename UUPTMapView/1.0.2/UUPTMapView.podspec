#
# Be sure to run `pod lib lint UUPTMapView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UUPTMapView'
  s.version          = '1.0.2'
  s.summary          = 'UU跑腿地图、导航、定位、编解码公共组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'UU跑腿地图公共组件库'

  s.homepage         = 'http://uugit.uupt.com/zhangwenbin/UUPTMapView.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'Code is MIT, then custom font licenses.'
  s.author           = { 'zhangwenbin' => '750460196@qq.com' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangwenbin/UUPTMapView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '9.0'
  s.public_header_files = 'Pod/Classes/**/**/*.h'
#  s.source_files = "Classes/**/**/*.{h,m}"
#  s.module_name = 'UUPTMapViewModule'
  s.dependency 'BaiduMapKit', '5.1.0'
  s.dependency 'AMap3DMap', '7.0.0'
  s.dependency 'AMapSearch'

#  s.subspec 'UURouteModule' do |a|
#      a.source_files = "UUPTMapView/Classes/UURouteModule/**/*."
#  end
end
