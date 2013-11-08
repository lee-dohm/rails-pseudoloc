# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/pseudoloc/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails-pseudoloc'
  spec.version       = Rails::Pseudoloc::VERSION
  spec.authors       = ['Lee Dohm']
  spec.email         = ['lee@liftedstudios.com']
  spec.description   = %q{Provides automated pseudolocalization capabilities to Ruby on Rails applications.}
  spec.summary       = %q{Provides automated pseudolocalization capabilities to Rails applications.}
  spec.homepage      = 'https://github.com/lee-dohm/rails-pseudoloc'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'fuubar'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'redcarpet'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'yard'
end
