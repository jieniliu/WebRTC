Pod::Spec.new do |s|
  s.name         = "WebRTC"
  s.module_name  = "WebRTC"
  s.version      = "6.0"
  s.summary      = "WebRTC xcframework for iOS"
  s.description  = "Precompiled WebRTC library packaged as an xcframework for iOS applications."
  s.homepage     = "https://github.com/jieniliu/WebRTC"
  s.license      = { :type => "LGPL-3.0", :file => "LICENSE" }
  s.author       = { "Jieni Liu" => "jieni@example.com" }

  s.platform     = :ios, "12.1"
  s.requires_arc = true
  s.static_framework = true

  s.source = { :http => "https://github.com/jieniliu/WebRTC/releases/download/4.0/WebRTC-4.0.zip" }

  s.prepare_command = <<-CMD
    unzip -o WebRTC-4.0.xcframework.zip
  CMD

  s.libraries = ["z", "bz2", "c++", "iconv"]
  s.frameworks = ["AudioToolbox", "AVFoundation", "CoreMedia", "VideoToolbox"]

  s.vendored_frameworks = [
    "WebRTC.xcframework",
  ]

  s.exclude_files = ["*.zip"]
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end
