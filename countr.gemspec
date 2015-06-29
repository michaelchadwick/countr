# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'countr/version'

Gem::Specification.new do |spec|
  spec.name           = "countr"
  spec.version        = Countr::VERSION
  spec.authors        = ["Michael Chadwick"]
  spec.email          = ["michael.chadwick@gmail.com"]
  spec.homepage       = 'http://rubygems.org/gems/countr'
  spec.summary        = 'Displays the number of character in a string'
  spec.description    = 'Simple RubyGem that takes a string and displays the number of characters'

  spec.files          = `git ls-files`.split("\n")
  spec.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables    = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths  = ['lib']
  spec.license        = 'MIT'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
