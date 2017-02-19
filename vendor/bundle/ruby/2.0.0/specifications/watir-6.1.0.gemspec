# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "watir"
  s.version = "6.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Rodionov", "Titus Fortner"]
  s.date = "2017-01-04"
  s.description = "Watir stands for Web Application Testing In Ruby\nIt facilitates the writing of automated tests by mimicing the behavior of a user interacting with a website.\n"
  s.email = ["p0deje@gmail.com", "titusfortner@gmail.com"]
  s.homepage = "http://github.com/watir/watir"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "watir"
  s.rubygems_version = "2.0.14"
  s.summary = "Watir powered by Selenium"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<selenium-webdriver>, ["~> 3.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<yard>, ["> 0.8.2.1"])
      s.add_development_dependency(%q<webidl>, [">= 0.1.5"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<fuubar>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<yard-doctest>, [">= 0.1.8"])
    else
      s.add_dependency(%q<selenium-webdriver>, ["~> 3.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<yard>, ["> 0.8.2.1"])
      s.add_dependency(%q<webidl>, [">= 0.1.5"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<fuubar>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<yard-doctest>, [">= 0.1.8"])
    end
  else
    s.add_dependency(%q<selenium-webdriver>, ["~> 3.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<yard>, ["> 0.8.2.1"])
    s.add_dependency(%q<webidl>, [">= 0.1.5"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<fuubar>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<activesupport>, ["~> 3.0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<yard-doctest>, [">= 0.1.8"])
  end
end
