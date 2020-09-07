# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "rubocop-itsmycargo"
  spec.version = "#{Time.now.strftime("%y.%m")}.#{ENV.fetch("GITHUB_RUN_NUMBER", "0")}"
  spec.authors = ["Mikko Kokkonen"]
  spec.email = ["oss@itsmycargo.com"]

  spec.summary = "RuboCop Styles and Configuration for ItsMyCargo."
  spec.homepage = "https://github.com/itsmycargo/rubocop-itsmycargo"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_dependency "rubocop-rails", "2.8.0"
  spec.add_dependency "rubocop-rspec", "1.43.2"
  spec.add_dependency "standard", "0.6.0"

  spec.add_development_dependency "bump", "~> 0.9"
  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
