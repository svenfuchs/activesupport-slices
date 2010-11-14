$:.unshift File.expand_path('../lib', __FILE__)
require 'active_support/slices/version'

Gem::Specification.new do |s|
  s.name         = "activesupport-slices"
  s.version      = ActiveSupport::Slices::VERSION
  s.authors      = ["Sven Fuchs"]
  s.email        = "svenfuchs@artweb-design.de"
  s.homepage     = "http://github.com/svenfuchs/activesupport-slices"
  s.summary      = "Lazy loaded vertical code slices based on ActiveSupport Dependencies"
  s.description  = "Lazy loaded vertical code slices based on ActiveSupport Dependencies."

  s.files        = Dir.glob("lib/**/**")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'
end
