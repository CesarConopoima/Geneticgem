# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'genetic/version'

Gem::Specification.new do |spec|
  spec.name          = "genetic"
  spec.version       = Genetic::VERSION
  spec.authors       = ["CesarConopoima"]
  spec.email         = ["cesar.conopoima@gmail.com"]
  spec.summary       = %q{This serve as API for genetic algorithms written in c++}
  spec.description   = %q{Main c++ algorith was developed in USB by electronic science departement, and then implemented to fit curves by B. Manuel, and finally convert to gem by CC.}
  spec.homepage      = ""
  spec.license       = "MIT"

  #spec.files         = `git ls-files -z`.split("\x0")
  spec.files         = ["lib/genetic.rb","lib/genetic/geneticapi.so","lib/genetic/version.rb"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
