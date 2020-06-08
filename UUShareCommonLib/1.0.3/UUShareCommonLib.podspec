#
# Be sure to run `pod lib lint UUShareCommonLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UUShareCommonLib'
  s.version          = '1.0.3'
  s.summary          = 'UUiOS客户端分享组件'
  s.description      = 'UUiOS客户端分享'
  s.homepage         = 'http://uugit.uupt.com/zhangwenbin/UUShareCommonLib.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '张文斌' => '750460196@qq.com' }
  s.source           = { :git => 'http://uugit.uupt.com/zhangwenbin/UUShareCommonLib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.requires_arc     = true;
  s.subspec 'ShareLib' do |c|
       c.source_files = 'UUShareCommonLib/Classes/UUUShare/*'
       c.dependency 'UMCShare/UI'
       c.dependency 'UMCShare/Social/QQ'
       c.dependency 'UMCShare/Social/ReducedWeChat'
       c.dependency 'UMCAnalytics'
   end
   
   s.subspec 'DownloadLib' do |b|
      b.source_files = 'UUShareCommonLib/Classes/UUDownload/*'
      b.dependency 'SDWebImage', '5.0.0'
   end
end
