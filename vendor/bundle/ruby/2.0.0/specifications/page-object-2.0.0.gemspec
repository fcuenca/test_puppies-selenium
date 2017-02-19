# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "page-object"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Morgan", "Dane Andersen"]
  s.date = "2016-11-23"
  s.description = "Page Object DSL that works with both Watir and Selenium"
  s.email = ["jeff.morgan@leandog.com", "dane.andersen@gmail.com"]
  s.homepage = "http://github.com/cheezy/page-object"
  s.licenses = ["MIT"]
  s.post_install_message = "\nThis version of the gem moves to using the new Watir gem and away from\nusing Watir Webdriver. You will need to update you Gemfile to use `watir`\ninstead of `watir-webdriver` and update any `require` statements in your\ncode.\n\nThis is an important move as Watir Webdriver will not be supported any\nlonger. All new development has been moved to Watir.  There are also\nsignificant benefits to this move.  See the Watir site at\nhttps://watir.github.io for more details.\n"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Page Object DSL for browser testing"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<watir>, ["~> 6.0"])
      s.add_runtime_dependency(%q<selenium-webdriver>, ["~> 3.0"])
      s.add_runtime_dependency(%q<page_navigation>, [">= 0.9"])
      s.add_runtime_dependency(%q<net-http-persistent>, ["~> 2.9.4"])
      s.add_development_dependency(%q<rspec>, [">= 3.0.0"])
      s.add_development_dependency(%q<cucumber>, [">= 2.0.0"])
      s.add_development_dependency(%q<yard>, [">= 0.7.2"])
      s.add_development_dependency(%q<rack>, ["~> 1.0"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.8.1"])
    else
      s.add_dependency(%q<watir>, ["~> 6.0"])
      s.add_dependency(%q<selenium-webdriver>, ["~> 3.0"])
      s.add_dependency(%q<page_navigation>, [">= 0.9"])
      s.add_dependency(%q<net-http-persistent>, ["~> 2.9.4"])
      s.add_dependency(%q<rspec>, [">= 3.0.0"])
      s.add_dependency(%q<cucumber>, [">= 2.0.0"])
      s.add_dependency(%q<yard>, [">= 0.7.2"])
      s.add_dependency(%q<rack>, ["~> 1.0"])
      s.add_dependency(%q<coveralls>, ["~> 0.8.1"])
    end
  else
    s.add_dependency(%q<watir>, ["~> 6.0"])
    s.add_dependency(%q<selenium-webdriver>, ["~> 3.0"])
    s.add_dependency(%q<page_navigation>, [">= 0.9"])
    s.add_dependency(%q<net-http-persistent>, ["~> 2.9.4"])
    s.add_dependency(%q<rspec>, [">= 3.0.0"])
    s.add_dependency(%q<cucumber>, [">= 2.0.0"])
    s.add_dependency(%q<yard>, [">= 0.7.2"])
    s.add_dependency(%q<rack>, ["~> 1.0"])
    s.add_dependency(%q<coveralls>, ["~> 0.8.1"])
  end
end
