# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-bodymedia/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-bodymedia"
  s.version     = OmniAuth::Bodymedia::VERSION
  s.authors     = ["Michael Murray"]
  s.email       = ["mmurray@fitoop.com"]
  s.homepage    = "https://www.fitoop.com/"
  s.summary     = %q{OmniAuth strategy for BodyMedia}
  s.description = %q{OmniAuth strategy for BodyMedia}

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_runtime_dependency 'multi_xml'
end
