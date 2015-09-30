$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin_bounds/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin_bounds"
  s.version     = AdminBounds::VERSION
  s.authors     = ["Rick Jones"]
  s.email       = ["rick.jones@playtimestudios.com"]
  s.homepage    = "https://github.com/playtimestudios/admin_bounds"
  s.summary     = "Administration boundaries from OSM"
  s.description = "Downloads OSM data and creates hierarchical table for administrative boundaries."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "activerecord-postgis-adapter"
  s.add_dependency "pbf_parser"
  s.add_dependency "pg"
  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "fantaskspec"
  s.add_development_dependency "generator_spec"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
end
