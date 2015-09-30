# -*- encoding: utf-8 -*-
# stub: memfs 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "memfs"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Simon COURTOIS"]
  s.date = "2015-09-13"
  s.description = "MemFs provides a fake file system that can be used for tests. Strongly inspired by FakeFS."
  s.email = ["scourtois@cubyx.fr"]
  s.homepage = "http://github.com/simonc/memfs"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "memfs-0.5.0"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<coveralls>, ["~> 0.6"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<guard>, ["~> 2.6"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 4.3"])
      s.add_development_dependency(%q<rb-inotify>, ["~> 0.8"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_development_dependency(%q<rb-fchange>, ["~> 0.0"])
    else
      s.add_dependency(%q<coveralls>, ["~> 0.6"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<guard>, ["~> 2.6"])
      s.add_dependency(%q<guard-rspec>, ["~> 4.3"])
      s.add_dependency(%q<rb-inotify>, ["~> 0.8"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_dependency(%q<rb-fchange>, ["~> 0.0"])
    end
  else
    s.add_dependency(%q<coveralls>, ["~> 0.6"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<guard>, ["~> 2.6"])
    s.add_dependency(%q<guard-rspec>, ["~> 4.3"])
    s.add_dependency(%q<rb-inotify>, ["~> 0.8"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
    s.add_dependency(%q<rb-fchange>, ["~> 0.0"])
  end
end
