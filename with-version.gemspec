# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'with-version/version'

Gem::Specification.new do |s|
  s.name = 'with-version'
  s.version = With::Version::VERSION
  s.authors = ['Daniel Doubrovkine']
  s.email = 'dblock@dblock.org'
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.files = Dir['**/*']
  s.require_paths = ['lib']
  s.homepage = 'http://github.com/dblock/with-version'
  s.licenses = ['MIT']
  s.summary = 'Syntax sugar for version checks.'
end
