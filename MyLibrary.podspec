#
# Be sure to run `pod lib lint MyLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MyLibrary'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MyLibrary.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  我是描述
                       DESC

  s.homepage         = 'https://github.com/liulichao/MyLibrary'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liulichao' => 'liulichao2014@xiaochuankeji.cn' }
  s.source           = { :git => 'https://github.com/liulichao/MyLibrary.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MyLibrary/Classes/**/*'
  
  # 资源指定方式： 两中方式，会影响编译后资源目录位置，代码中访问资源的形式有差别 请对应查看TestImageView.swift文件
  # 推荐方式2
  
  # 方式1、s.resources， 最终资源会在framework下打包成Assets.car
  # s.resources = 'MyLibrary/Assets/*.xcassets' #可以是一个数组，也可以只是一个
  # s.resources = ['MyLibrary/Assets/*.xcassets']
  
  # 方式2、s.resource_bundles  最终资源会在framework下打包xxx.bundle,里面是Assets.car
   s.resource_bundles = {
     'MyLibrary' => ['MyLibrary/Assets/Image.xcassets'] #注意这里后面是[*.xcasset]而是不是 [*.xcassets/]
   }
   # 还可以添加多个 ，生成APP时会生成多个 bundle文件
   # s.resource_bundles = {
   #   'MyLibrary' => ['MyLibrary/Assets/Image.xcassets'],
   #   'MyLibrary2' => ['MyLibrary/Assets/OtherImage.xcassets']
   # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
