#
# Be sure to run `pod lib lint HZDome.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HZDome'
  s.version          = '0.1.0'
  s.summary          = '简单的三方库测试dome'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
简单的三方库测试dome 简单的三方库测试dome 简单的三方库测试dome
                       DESC

  s.homepage         = 'https://github.com/liuyihau/HZdome'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuyihua2015' => '18551614289@139.com' }
  s.source           = { :git => 'https://github.com/liuyihau/HZdome.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HZDome/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HZDome' => ['HZDome/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
