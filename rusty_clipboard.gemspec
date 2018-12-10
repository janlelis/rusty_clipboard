# encoding: utf-8

require_relative "lib/rusty_clipboard/version"

Gem::Specification.new do |s|
  s.name         = "rusty_clipboard"
  s.version      = RustyClipboard::VERSION
  s.authors      = ["Jan Lelis"]
  s.email        = "mail@janlelis.de"
  s.homepage     = "https://github.com/janlelis/rusty_clipboard"
  s.summary      = "Access to your clipboard crossplatform with help from Rust"
  s.files        = Dir["{lib/**/*,[A-Z]*}"]
  s.license      = "MIT"
  s.requirements = [
    "Experimental: Currently requires a manual compilation step",
  ]

  s.platform     = Gem::Platform::RUBY
  s.require_path = "lib"

  s.add_dependency "helix_runtime", "~> 0.7.5"
end
