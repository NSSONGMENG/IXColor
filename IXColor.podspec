
Pod::Spec.new do |s|

  s.name         = "IXColor"
  s.version      = "0.0.7"
  s.summary      = "App颜色图片动态更换框架"
  s.description  = "wightmeng@gmail.com"
  s.homepage     = "https://github.com/NSSONGMENG/IXColor"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "wightmeng@gmail.com" => "" }

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/NSSONGMENG/IXColor.git", :tag => "#{s.version}" }

  s.source_files  = "IXColor/*.{h,m}","IXColor/**/*.{h,m}"
# s.public_header_files = "IXColor/*.h"

  s.requires_arc = true

s.subspec 'Core' do |sub|
    sub.source_files = "IXColor/Core/*.{h,m}"
    sub.public_header_files = "IXColor/Core/*.h"
# sub.dependency 'IXColor'
end

s.subspec 'UIKit' do |sub|
    sub.source_files = "IXColor/UIKit/*.{h,m}"
    sub.public_header_files = "IXColor/UIKit/*.h"
    sub.dependency 'IXColor/Core'
end

s.subspec 'Quartz' do |sub|
    sub.source_files = "IXColor/Quartz/*.{h,m}"
    sub.public_header_files = "IXColor/Quartz/*.h"
    sub.dependency 'IXColor/Core'
end

end
