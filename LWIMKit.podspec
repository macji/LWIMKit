
Pod::Spec.new do |s|

  s.name         = "LWIMKit"
  s.version      = "2.9.1"
  s.summary      = "阿里悟空 iOS SDK"
  s.description  = <<-DESC
                   阿里悟空通过提供云端 API 及客户端 SDK，帮助开发者简单、快速的开发移动应用。
                   DESC
  s.homepage     = "https://wukong.laiwang.com"
  s.license      = { :type => "MIT", :text => "阿里悟空 © 2014. See http://m.laiwang.com/market/laiwang/wukong-serviceagreement.php" }
  s.author             = { "阿里悟空" => "imwukong@service.alibaba.com" }
  s.platform     = :ios, "5.0"
  s.ios.deployment_target = "5.0"

  s.source       = { :http => "https://github.com/macji/LWIMKit/raw/master/Products/2.9.0/LWIMKit.framework.zip"}
  s.preserve_paths = "LWIMKit.framework/*"

  s.vendored_frameworks = "LWIMKit.framework"
  s.requires_arc = true

  s.frameworks = "CFNetwork", "CoreTelephony", "CoreGraphics"
  s.libraries = "sqlite3", "z", "stdc++.6.0.9"
  s.xcconfig = { 
    "OTHER_LDFLAGS" => "-ObjC -lz", 
    "FRAMEWORK_SEARCH_PATHS" => "$(PODS_ROOT)/LWIMKit"
  }
  s.dependency 'CocoaLumberjack', '1.9.2'
  s.dependency 'UTDID', '1.0.0'

end
