# -*- encoding: utf-8 -*-
# stub: pbf_parser 0.2.0 ruby lib
# stub: ext/pbf_parser/extconf.rb

Gem::Specification.new do |s|
  s.name = "pbf_parser"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Adri\u{e0} Planas"]
  s.date = "2014-11-05"
  s.email = ["adriaplanas@liquidcodeworks.com"]
  s.extensions = ["ext/pbf_parser/extconf.rb"]
  s.files = ["ext/pbf_parser/extconf.rb"]
  s.homepage = "https://github.com/planas/pbf_parser"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Parse Open Street Map PBF files with ease"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
