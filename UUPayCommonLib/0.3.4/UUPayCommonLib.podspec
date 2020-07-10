#
# Be sure to run `pod lib lint UUPayCommonLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UUPayCommonLib'
  s.version          = '0.3.4'
  s.summary          = 'UUiOS支付SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '支付SDK'

  s.homepage         = 'http://uugit.uupt.com/zhangwenbin/UUPayCommonLib.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '张文斌' => '750460196@qq.com' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangwenbin/UUPayCommonLib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.subspec 'WechatPay' do |a|
      a.requires_arc        = true
      a.source_files        = 'UUPayCommonLib/Classes/OpenSDK/*.{h,m}'
      a.vendored_libraries  = 'UUPayCommonLib/Classes/OpenSDK/libWeChatSDK.a'
      a.frameworks          = 'Security', 'CoreGraphics', 'WebKit'
      a.libraries           = 'z', 'sqlite3.0', 'c++'
  end
  
  s.subspec 'AliPay' do |b|
      b.vendored_frameworks = 'UUPayCommonLib/Classes/AliPay/*.framework'
      b.requires_arc = true
      b.frameworks = "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "UIKit", "Foundation", "CFNetwork", "CoreMotion","WebKit"
      b.libraries = "z", "c++"
      b.resource_bundles = {
          'AliPay' => ['UUPayCommonLib/Classes/AliPay/*.bundle']
      }
  end
  
  s.subspec 'CMBPay' do |c|
      c.vendored_frameworks = 'UUPayCommonLib/Classes/CMBPay/*.framework'
      c.source_files        = 'UUPayCommonLib/Classes/CMBPay/*.{h,m}'
  end

  s.subspec 'UAPay' do |d|
      d.source_files = 'UUPayCommonLib/Classes/UPAPaySDK/inc/*'
      d.vendored_libraries = 'UUPayCommonLib/Classes/UPAPaySDK/libs/libUPAPayPlugin.a','UUPayCommonLib/Classes/UPAPaySDK/libs/libPaymentControl.a'
      d.frameworks = "Foundation", "UIKit", "CFNetwork", "SystemConfiguration","PassKit",'WebKit'
      d.requires_arc = true
      d.libraries = "z", "stdc++"
      d.public_header_files = "UUPayCommonLib/Classes/UPAPaySDK/*.h"
      
  end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
