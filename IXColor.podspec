
Pod::Spec.new do |s|

  s.name         = "IXColor"
  s.version      = "0.0.4"
  s.summary      = "App支持主题更换组件"

  s.description  = "wightmeng@gmail.com"

  s.homepage     = "https://github.com/NSSONGMENG/IXColor"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "wightmeng@gmail.com" => "" }

  s.platform     = :ios
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/NSSONGMENG/IXColor.git", :tag => "#{s.version}" }

  s.source_files  = "IXColor/IXColor/IXColorHeader.h","IXColor/IXColor/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  s.public_header_files = "IXColor/IXColor/IXColorHeader.h"
 
  s.subspec 'Core' do |sub|
	sub.source_files = "IXColor/IXColor/Core/*.{h,m}"
  end
	
  s.subspec 'UIKit' do |sub|
	sub.source_files = "IXColor/IXColor/UIKit/*.{h,m}"
  end

  s.subspec 'Quartz' do |sub|
        sub.source_files = "IXColor/IXColor/Quartz/*.{h,m}"
  end





   s.requires_arc = true

end
