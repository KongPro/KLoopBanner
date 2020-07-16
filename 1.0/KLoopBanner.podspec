

Pod::Spec.new do |spec|

  spec.name         = "KLoopBanner"
  spec.version      = "1.0"
  spec.summary      = "KLoopBanner"
  spec.description  = <<-DESC
		      This is Banner that can loop forever
                      DESC
  spec.homepage     = "https://github.com/KongPro/KLoopBanner"
  spec.license      = "MIT"
  spec.author       = { "kongfanwu" => "kongfanwu@mia.com" }
  spec.platform     = :ios, "8.2"
  spec.source       = { :git => "https://github.com/KongPro/KLoopBanner.git", :tag => "1.0" }
  spec.source_files = "KLoopBanner/KLoopBanner/**/*.{h,m}"
  spec.requires_arc = true

end
