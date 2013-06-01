# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ceaser-easing/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jared Hardy"]
  gem.email         = ["jared@jaredhardy.com"]
  gem.description   = %q{a css transition implementation of the Penner equations based on @matthewlein css conversions for compass}
  gem.summary       = %q{a css transition implementation of the Penner equations based on @matthewlein css conversions for compass}
  gem.homepage      = "https://github.com/jhardy/compass-ceaser-easing"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ceaser-easing"
  gem.require_paths = ["lib"]
  gem.version       = CeaserEasing::VERSION
  gem.add_dependency("compass", [">= 0.12.2"])
  gem.add_dependency("rake")
end
