# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "version"

Gem::Specification.new do |spec|
  spec.name          = "coin_info"
  spec.version       = TokenAdapter::VERSION
  spec.authors       = ["Leon"]
  spec.email         = ["leon.zcf@gmail.com"]

  spec.summary       = "An adapter of different tokens for exchange"
  spec.description   = "An adapter of different tokens for exchange"
  spec.homepage      = "https://coding.net/u/oldfritter/p/coin-info"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
end

