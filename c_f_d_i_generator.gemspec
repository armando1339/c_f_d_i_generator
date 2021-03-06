# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'c_f_d_i_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "c_f_d_i_generator"
  spec.version       = CFDIGenerator::VERSION
  spec.authors       = ["Armando Alejandre"]
  spec.email         = ["armando1339@gmail.com"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Generate XML (CFDI) files for invoices of Mexico.}
  # spec.homepage      = "Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  
  # NEW ADDS: New development dependencies added ->
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'coveralls'
  # => end

  # NEW ADDS: New dependencies added ->
  spec.add_dependency 'nokogiri', '~> 1.8'
  spec.add_dependency 'activemodel', '~> 5.1', '>= 5.1.2'
  spec.add_dependency 'activesupport', '~> 5.1', '>= 5.1.2'
  # => end
end
