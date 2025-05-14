Pod::Spec.new do |s|
  s.name         = "ffmpeg-kit-ios-audio"
  s.module_name  = "ffmpegkit"
  s.version      = "6.0"
  s.summary      = "FFmpeg Kit iOS Audio for iOS applications"
  s.description  = "FFmpeg Kit iOS Audio includes FFmpeg with audio related features and libraries enabled."
  s.homepage     = "https://github.com/jieniliu/ffmpeg-kit-ios-audio"
  s.license      = { :type => "LGPL-3.0", :file => "LICENSE" }
  s.author       = { "Your Name" => "your.email@example.com" }

  s.platform     = :ios, "12.1"
  s.requires_arc = true
  s.static_framework = true

  s.source       = { :http => "https://github.com/jieniliu/ffmpeg-kit-ios-audio/releases/download/6.0/ffmpeg-kit-ios-audio-6.0.xcframework.zip" }

  s.prepare_command = <<-CMD
    unzip -o ffmpeg-kit-ios-audio-6.0.xcframework.zip -d extracted
    mv extracted/*.xcframework .
  CMD

  s.libraries = ["z", "bz2", "c++", "iconv"]
  s.frameworks = ["AudioToolbox", "AVFoundation", "CoreMedia", "VideoToolbox"]

  s.vendored_frameworks = [
    "ffmpegkit.xcframework",
    "libavcodec.xcframework",
    "libavdevice.xcframework",
    "libavfilter.xcframework",
    "libavformat.xcframework",
    "libavutil.xcframework",
    "libswresample.xcframework",
    "libswscale.xcframework"
  ]

  s.exclude_files = ["*.zip"]
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end
