# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'monte_carlo_simulation/version'

Gem::Specification.new do |gem|
  gem.name          = "monte_carlo_simulation"
  gem.version       = MonteCarloSimulation::VERSION
  gem.authors       = ["Tadatoshi Takahashi"]
  gem.email         = ["tadatoshi@gmail.com"]
  gem.description   = %q{Monte Carlo Simulation}
  gem.summary       = %q{Monte Carlo Simulation}
  gem.homepage      = "https://github.com/tadatoshi/monte_carlo_simulation"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"   
end
