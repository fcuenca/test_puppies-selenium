# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fig_newton"
  s.version = "0.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Morgan", "Steve Jackson"]
  s.date = "2016-10-20"
  s.description = "Provides a simple mechanism to maintain and use different configurations stored in yml files."
  s.email = ["jeff.morgan@leandog.com", "steve.jackson@leandogsoftware.com"]
  s.homepage = "http://github.com/cheezy/fig_newton"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Provides a simple mechanism to maintain and use different configurations stored in yml files."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<yml_reader>, [">= 0.5"])
      s.add_development_dependency(%q<rspec>, [">= 3.2.0"])
      s.add_development_dependency(%q<cucumber>, [">= 1.3.19"])
    else
      s.add_dependency(%q<yml_reader>, [">= 0.5"])
      s.add_dependency(%q<rspec>, [">= 3.2.0"])
      s.add_dependency(%q<cucumber>, [">= 1.3.19"])
    end
  else
    s.add_dependency(%q<yml_reader>, [">= 0.5"])
    s.add_dependency(%q<rspec>, [">= 3.2.0"])
    s.add_dependency(%q<cucumber>, [">= 1.3.19"])
  end
end
