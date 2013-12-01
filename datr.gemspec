# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'datr/version'

Gem::Specification.new do |spec|
  spec.name          = "datr"
  spec.version       = Datr::VERSION
  spec.authors       = ["Ignacio Contreras Pinilla"]
  spec.email         = ["ignacio@ignacio.cat"]
  spec.description   = %q{Ruby implementation of some common data structures}
  spec.summary       = %q{Common data structures}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
