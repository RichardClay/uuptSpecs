#
# Be sure to run `pod lib lint UUASRLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UUASRLib'
  s.version          = '0.2.3'
  s.summary          = 'iOS百度语音识别公共库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '百度语音识别公共库'
  s.homepage         = 'http://uugit.uupt.com/zhangwenbin/UUASRLib.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '张文斌' => '750460196@qq.com' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangwenbin/UUASRLib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'UUASRLib/Classes/**/*'
  s.libraries  = 'c++','z.1.2.5','sqlite3.0'
  s.frameworks = 'AudioToolbox','AVFoundation','CFNetwork','CoreLocation','CoreTelephony','SystemConfiguration','GLKit'
end

