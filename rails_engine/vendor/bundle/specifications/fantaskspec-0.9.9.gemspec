# -*- encoding: utf-8 -*-
# stub: fantaskspec 0.9.9 ruby lib

Gem::Specification.new do |s|
  s.name = "fantaskspec"
  s.version = "0.9.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Michael Crismali"]
  s.date = "2014-09-28"
  s.description = "Makes it easy to test your Rake tasks with RSpec."
  s.email = ["michael.crismali@gmail.com"]
  s.homepage = "https://github.com/crismali/fantaskspec"
  s.licenses = ["Apache"]
  s.rubygems_version = "2.4.5"
  s.summary = "Makes it easy to test your Rake tasks with RSpec."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, ["~> 10.0"])
      s.add_runtime_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<pry-nav>, [">= 0"])
    else
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<pry-nav>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<pry-nav>, [">= 0"])
  end
end
