# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'view_model/version'

Gem::Specification.new do |spec|
  spec.name          = 'view_model'
  spec.version       = ViewModel::VERSION
  spec.authors       = ['Andreas Busold']
  spec.email         = ['ab@neopoly.de']

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  end

  spec.summary       = %q{Rails compatible view models}
  spec.license       = 'MIT'
  spec.homepage      = 'https://github.com/neopoly/view_model'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'virtus', '~> 1.0'
  spec.add_dependency 'activemodel', '>= 3.2'

  spec.add_development_dependency 'bundler', '>= 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
