# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'visualize_inheritance/version'

Gem::Specification.new do |spec|
  spec.name          = "visualize_inheritance"
  spec.version       = VisualizeInheritance::VERSION
  spec.authors       = ["Cyrus Vandrevala"]
  spec.email         = ["cyrus.vandrevala@gmail.com"]
  spec.description   = %q{Create a directed graph of the relationships between classes in a Ruby program.}
  spec.summary       = %q{Directed graph of relations.}
  spec.homepage      = "http://rubygems.org/gems/visualize_inheritance"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end