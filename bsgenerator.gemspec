# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bsgenerator/version"

Gem::Specification.new do |s|
  s.name        = "bsgenerator"
  s.version     = BsGenerator::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Subbu Athikunte"]
  s.email       = ["subbu.athikunte@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Bullshit generator}
  s.description = %q{Bullshit generator}

  s.rubyforge_project = "bsgenerator"

  s.files         = ["bsgenerator.gemspec", "README.rdoc", "Rakefile", "lib/bsgenerator.rb", "lib/bsgenerator/version.rb"]
  s.test_files    = []
  s.executables   = []
  s.require_paths = ["lib"]
end
