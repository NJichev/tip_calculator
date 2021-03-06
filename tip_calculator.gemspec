# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tip_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "tip_calculator"
  spec.version       = TipCalculator::VERSION
  spec.authors       = ["Nikola Jichev"]
  spec.email         = ["njichev@gmail.com"]

  spec.summary       = %q{A little gem to calculate our tips.}
  spec.description   = %q{This gem serves the purpose of calculating our tips for us dumb mathless developers.}
  spec.homepage      = "https://www.github.com/njichev/coderunnes/tip_calculator"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename() }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  # spec.executables << 'tip-calculator'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
