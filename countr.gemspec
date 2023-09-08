# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'countr/version'

source_uri = 'https://github.com/michaelchadwick/countr'
rubygem_uri = 'http://rubygems.org/gems/countr'

Gem::Specification.new do |spec|
  spec.name            = "countr"
  spec.summary         = 'Displays character count of string'
  spec.version         = Countr::VERSION
  spec.platform        = Gem::Platform::RUBY
  spec.authors         = ["Michael Chadwick"]
  spec.email           = ["mike@neb.host"]
  spec.homepage        = rubygem_uri
  spec.license         = 'MIT'
  spec.description     = 'Simple RubyGem that takes a string and displays the number of characters'

  spec.files           = `git ls-files`.split("\n")
  spec.test_files      = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables     = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths   = ['lib']

  spec.metadata        = {
    "documentation_uri" => source_uri,
    "homepage_uri" => source_uri,
    "source_code_uri" => source_uri
  }

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec"
end
