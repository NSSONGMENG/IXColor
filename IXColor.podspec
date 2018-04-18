
Pod::Spec.new do |s|

  #

  s.name         = "IXColor"
  s.version      = "0.0.3"
  s.summary      = "App支持主题更换组件"

  s.description  = "wightmeng@gmail.com"

  s.homepage     = "https://github.com/NSSONGMENG/IXColor"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "wightmeng@gmail.com" => "" }
  # Or just: s.author    = "seven.song@ixdigit.com"
  # s.authors            = { "seven.song@ixdigit.com" => "" }
  # s.social_media_url   = "http://twitter.com/seven.song@ixdigit.com"


  s.platform     = :ios
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/NSSONGMENG/IXColor.git", :tag => "#{s.version}" }


  s.source_files  = "IXColor","IXColor/**/*.{h,m}"
  # s.exclude_files = "IXColor"

  s.public_header_files = "IXColor/*.h"



   s.requires_arc = true

end
