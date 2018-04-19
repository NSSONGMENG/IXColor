
Pod::Spec.new do |s|

  s.name         = "IXColor"
  s.version      = "0.0.5"
  s.summary      = "App主题颜色图片更换框架"

  s.description  = "wightmeng@gmail.com"

  s.homepage     = "https://github.com/NSSONGMENG/IXColor"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "wightmeng@gmail.com" => "" }

  s.platform     = :ios
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/NSSONGMENG/IXColor.git", :tag => "#{s.version}" }

  s.source_files  = "IXColor/IXColor/IXColorHeader.h","IXColor/IXColor/IXColorMgr.{h,m}","IXColor/IXColor/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  s.public_header_files = "IXColor/IXColor/*.h"
 
  s.subspec 'Core' do |sub|
	sub.source_files = "IXColor/IXColor/Core/*.{h,m}"
	sub.public_header_files = "IXColor/IXColor/Core/*.h" 
	sub.dependency 'IXColor/IXColor'
  end
	
  s.subspec 'UIKit' do |sub|
	sub.source_files = "IXColor/IXColor/UIKit/*.{h,m}"
	sub.public_header_files = "IXColor/IXColor/UIKit/*.h"
	sub.dependency 'IXColor/IXColor'
  end

  s.subspec 'Quartz' do |sub|
        sub.source_files = "IXColor/IXColor/Quartz/*.{h,m}"
	sub.public_header_files = "IXColor/IXColor/Quartz/*.h"
	sub.dependency 'IXColor/IXColor'
  end





   s.requires_arc = true

end
