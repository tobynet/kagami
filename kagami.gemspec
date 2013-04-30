# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kagami/version'

Gem::Specification.new do |gem|
  gem.name          = "kagami"
  gem.version       = Kagami::VERSION
  gem.authors       = ["toooooooby"]
  gem.email         = ["toby.net.info.mail+git@gmail.com"]
  gem.description   = %q{A tool for mirroring text and ascii art}
  gem.summary       = %q{A tool for mirroring text and ascii art}
  gem.homepage      = "https://github.com/toooooooby/kagami"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency("rake", [">= 10.0"])
end
