$LOAD_PATH.push File.expand_path("../lib", __FILE__)

require "canary/version"

Gem::Specification.new do |s|
  s.name        = "canary"
  s.version     = Canary::VERSION
  s.authors     = ["Chris Pomfret"]
  s.email       = ["cpom40ba@gmail.com"]
  s.homepage    = "http://example.com"
  s.summary     = "Canary gem provides integration with the Canary status board."
  s.description = "Canary gem provides integration with the Canary status board to show issues on host application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_development_dependency "rake", "~> 12"
  s.add_development_dependency "rspec", "~> 3.6"
  s.add_development_dependency "simplecov", "~> 0.14.1"
  s.add_development_dependency "rubocop", "~> 0.49.1"

  s.add_dependency "cachet_api", "~> 1.0"
  s.add_dependency "rails", "~> 5"
end
