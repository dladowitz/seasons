$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "seasons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "seasons"
  s.version     = Seasons::VERSION
  s.authors     = ["David Ladowitz"]
  s.email       = ["david.ladowitz@instacart.com"]
  s.homepage    = ""
  s.summary     = "Checks to see if fruit is in season"
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.7.1"
  s.add_development_dependency "sqlite3"
end
