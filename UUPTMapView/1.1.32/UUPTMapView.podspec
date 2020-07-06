#
# Be sure to run `pod lib lint UUPTMapView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UUPTMapView'
  s.version          = '1.1.32'
  s.summary          = 'UU跑腿地图、导航、定位、编解码公共组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'UU跑腿地图公共组件库'
  s.homepage         = 'http://uugit.uupt.com/zhangwenbin/UUPTMapView.git'
  s.license          = 'Code is MIT, then custom font licenses.'
  s.author           = { 'zhangwenbin' => '750460196@qq.com' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangwenbin/UUPTMapView.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.frameworks = "Foundation", "UIKit"

  s.subspec 'Common' do |b|
     b.source_files = 'UUPTMapView/Classes/Common/*'
     b.dependency 'BaiduMapKit','5.1.0'
     b.dependency 'AMap3DMap', '7.5.0'
     b.dependency 'AMapSearch','7.3.0'
     s.dependency 'GlobalTimerManger'
  end

  s.subspec 'MapKit' do |c|
      c.dependency 'UUPTMapView/Common'
      c.source_files = 'UUPTMapView/Classes/MapManager/**/*'
  end

#  s.subspec 'UUGeocodingModule' do |a|
#      a.dependency 'UUPTMapView/Common'
#      a.source_files = 'UUPTMapView/Classes/UUGeocodingModule/*.{h,m}'
#  end

end
