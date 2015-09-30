$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin_bounds/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin_bounds"
  s.version     = AdminBounds::VERSION
  s.authors     = ["Rick Jones"]
  s.email       = ["rick.jones@playtimestudios.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AdminBounds."
  s.description = "TODO: Description of AdminBounds."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
end
