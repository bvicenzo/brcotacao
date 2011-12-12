# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "brcotacao/version"

Gem::Specification.new do |s|
  s.name        = "brcotacao"
  s.version     = Brcotacao::VERSION
  s.authors     = ["Bruno Vicenzo"]
  s.email       = ["greenmetal@gmail.com"]
  s.homepage    = "http://blog.brunovicenzo.com"
  s.summary     = %q{Trabalhando com moedas de vários países}
  s.description = %q{Adiciona classes e metodos para se trabalhar com cotação de moedas}

  s.rubyforge_project = "brcotacao"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
