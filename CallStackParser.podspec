Pod::Spec.new do |s|

  s.name                      = "CallStackParser"
  s.version                   = "1.0.1"
  s.summary                   = "A swift library to parse call stack symbol supporting iOS, tvOS, watchOS, and macOS."
  s.homepage                  = "https://github.com/gumob/CallStackParser"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "gumob" => "hello@gumob.com" }
  s.frameworks                = 'Foundation'
  s.requires_arc              = true
  s.source                    = { :git => "https://github.com/gumob/CallStackParser.git", :tag => "#{s.version}" }
  s.source_files              = "Source/*.{swift}"
  s.ios.deployment_target     = "8.0"
  s.tvos.deployment_target    = "9.0"
  s.watchos.deployment_target = "2.0"
  s.osx.deployment_target     = "10.13"
  s.swift_version             = "5.3"

end
