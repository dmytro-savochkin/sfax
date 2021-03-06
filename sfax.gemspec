# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sfax/version'

Gem::Specification.new do |spec|
  spec.name          = 'sfax'
  spec.version       = SFax::VERSION
  spec.authors       = ['Feridun Mert Celebi']
  spec.email         = ['mert@patientbank.com']
  spec.summary       = %q{Wrapper around SFax API}
  spec.description   = %q{Ruby wrapper for sFax API.}
  spec.homepage      = 'https://www.patientbank.us'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
