# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "rubocop-itsmycargo"
  spec.version = "#{Time.now.strftime("%y.%m")}.#{ENV.fetch("GITHUB_RUN_NUMBER", "0")}"
  spec.authors = ["Mikko Kokkonen"]
  spec.email = ["mikko.kokkonen@itsmycargo.com"]

  spec.summary = "RuboCop Styles and Configuration for ItsMyCargo."
  spec.homepage = "https://github.com/itsmycargo/rubocop-itsmycargo"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir["{config}/**/*"]

  spec.add_dependency "mry", "~> 0.78"
  spec.add_dependency "rubocop-rails", "2.11.3"
  spec.add_dependency "rubocop-rspec", "2.4.0"
  spec.add_dependency "standard", "1.5.0"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
