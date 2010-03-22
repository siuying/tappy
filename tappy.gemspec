# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tappy}
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Francis Chong"]
  s.date = %q{2010-03-22}
  s.default_executable = %q{tappy}
  s.description = %q{Twitter API Proxy in ruby.}
  s.email = ["francis@ignition.hk"]
  s.executables = ["tappy"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = [".autotest", "History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/tappy", "lib/tappy.rb", "lib/tappy/tappy_base.rb", "lib/tappy/filter/filter.rb", "lib/tappy/filter/agent_filter.rb", "test/test_tappy.rb"]
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{tappy}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Twitter API Proxy in ruby.}
  s.test_files = ["test/test_tappy.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<gemcutter>, [">= 0.5.0"])
      s.add_development_dependency(%q<hoe>, [">= 2.5.0"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<gemcutter>, [">= 0.5.0"])
      s.add_dependency(%q<hoe>, [">= 2.5.0"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<gemcutter>, [">= 0.5.0"])
    s.add_dependency(%q<hoe>, [">= 2.5.0"])
  end
end
