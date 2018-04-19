
Pod::Spec.new do |s|

  s.name         = "IXColor"
  s.version      = "0.0.5"
  s.summary      = "App主题颜色图片更换框架"
  s.description  = "wightmeng@gmail.com"
  s.homepage     = "https://github.com/NSSONGMENG/IXColor"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "wightmeng@gmail.com" => "" }

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/NSSONGMENG/IXColor.git", :tag => "#{s.version}" }

  s.source_files  = "IXColor/*.{h,m}","IXColor/**/*.{h,m}"
# s.public_header_files = "IXColor/*.h"

  s.requires_arc = true

end
