$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "active_model_generator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "active_model_generator"
  spec.version     = ActiveModelGenerator::VERSION
  spec.authors     = ["曽我進"]
  spec.email       = ["soga@yocto-inc.com"]
  spec.homepage    = "http://example.com"
  spec.summary     = "Summary of ActiveModelGenerator."
  spec.description = "Description of ActiveModelGenerator."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-rails"
end
