#
# Be sure to run `pod lib lint UUShareCommonLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UUShareCommonLib'
  s.version          = '1.0.8'
  s.summary          = 'UUiOS客户端分享组件'
  s.description      = 'UUiOS客户端分享'
  s.homepage         = 'http://uugit.uupt.com/zhangwenbin/UUShareCommonLib.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '张文斌' => '750460196@qq.com' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangwenbin/UUShareCommonLib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.requires_arc     = true;
  s.dependency       "UMCCommon","7.1.0"

  s.subspec 'UMShare' do |ss|
      ss.vendored_frameworks = 'UUShareCommonLib/Classes/UMShare.framework'
      ss.frameworks = 'CoreGraphics'
      ss.libraries = 'sqlite3'
  end
  
  s.subspec 'Social' do |ss|
      ss.dependency 'UUShareCommonLib/UMShare'
      
      ss.subspec 'ReducedQQ' do |sss|
          sss.vendored_libraries = 'UUShareCommonLib/Classes/SocialLibraries/QQ/*.a'
          sss.source_files = 'UUShareCommonLib/Classes/SocialLibraries/QQ/*.{h,m}'
          sss.public_header_files = 'UUShareCommonLib/Classes/SocialLibraries/QQ/*.h'
          sss.dependency 'UUShareCommonLib/UMShare'
      end
      
      ss.subspec 'ReducedSina' do |sss|
          sss.vendored_libraries = 'UUShareCommonLib/Classes/SocialLibraries/Sina/*.a'
          sss.source_files = 'UUShareCommonLib/Classes/SocialLibraries/Sina/*.{h,m}'
          sss.public_header_files = 'UUShareCommonLib/Classes/SocialLibraries/Sina/*.h'
          sss.frameworks = 'Photos'
          sss.dependency 'UUShareCommonLib/UMShare'
      end
      
      ss.subspec 'ReducedWeChat' do |sss|
          sss.vendored_libraries = 'UUShareCommonLib/Classes/SocialLibraries/WeChat/*.a'
          sss.source_files = 'UUShareCommonLib/Classes/SocialLibraries/WeChat/*.{h,m}'
          sss.public_header_files = 'UUShareCommonLib/Classes/SocialLibraries/WeChat/*.h'
          sss.dependency 'UUShareCommonLib/UMShare'
      end
      
      ss.subspec 'WeChat' do |sss|
          sss.vendored_libraries = 'UUShareCommonLib/Classes/SocialLibraries/WeChat/WechatSDK/*.a'
          sss.source_files = 'UUShareCommonLib/Classes/SocialLibraries/WeChat/WechatSDK/*.{h,m}'
          sss.public_header_files = 'UUShareCommonLib/Classes/SocialLibraries/WeChat/WechatSDK/*.h'
          sss.frameworks = 'SystemConfiguration','CoreTelephony'
          sss.libraries = 'sqlite3','c++','z'
          sss.dependency "UUShareCommonLib/Social/ReducedWeChat"
      end
      
      s.subspec 'DownloadLib' do |b|
          b.source_files = 'UUShareCommonLib/Classes/UUDownload/*'
          b.dependency 'SDWebImage', '5.0.0'
      end
  end
  
end
