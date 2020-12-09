$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "x_api_client/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "x_api_client"
  spec.version     = XApiClient::VERSION
  spec.authors     = ["John Viviano"]
  spec.email       = ["john@startin.com"]
  spec.homepage    = "http://www.evidentialearning.com"
  spec.summary     = "Transitional XApiClient."
  spec.description = "Transitional XApiClient."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.4"

  spec.add_development_dependency "sqlite3"
end
