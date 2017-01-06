#
# Be sure to run `pod lib lint UniversalModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UniversalModule'
  s.version          = '0.1.2'
  s.summary          = '基础组件.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/y1024/UniversalModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '杜晓星' => '1255322700@qq.com' }
  s.source           = { :git => 'https://github.com/y1024/UniversalModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.subspec 'Category' do |ss|
  ss.source_files = 'UniversalModule/Category/**/*'
  ss.public_header_files = 'UniversalModule/Category/**/*.h'

  end

s.subspec 'YTKNetworkExtension' do |ss|
ss.source_files = 'UniversalModule/YTKNetworkExtension/**/*'
ss.public_header_files = 'UniversalModule/YTKNetworkExtension/**/*.h'

end




  s.dependency 'SDWebImage', '~> 3.8.2'
  s.dependency 'Masonry', '~> 1.0.2'
  s.dependency 'CocoaSecurity', '~> 1.2.4'
  s.dependency 'MBProgressHUD', '~> 0.9.2'
  s.dependency 'Aspects', '~> 1.4.1'
  s.dependency 'MJRefresh', '~> 3.1.2'
  s.dependency 'pop', '~> 1.0.9'
  s.dependency 'GZIP', '~> 1.1.1'
  s.dependency 'ZXingObjC', '~> 3.1.0'
  s.dependency 'IQKeyboardManager', '~> 3.3.7'
  s.dependency 'YTKNetwork', '~> 2.0.3'
  s.dependency 'MJExtension', '~> 3.0.13'
  s.dependency 'JSPatchPlatform'
  s.dependency 'JSPatch/Extensions'
  s.dependency 'JSPatch/JPCFunction'
  s.dependency 'ZXingObjC', '~> 3.1.0'
  
  # s.resource_bundles = {
  #   'UniversalModule' => ['UniversalModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
