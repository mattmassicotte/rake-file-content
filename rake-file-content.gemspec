# frozen_string_literal: true

require_relative "lib/rake-file-content/version"

Gem::Specification.new do |spec|
  spec.name          = "rake-file-content"
  spec.version       = RakeFileContent::VERSION
  spec.authors       = ["Matthew Massicotte"]

  spec.summary       = "Rake DSL extensions for managing file dependencies by content"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/mattmassicotte/rake-file-content"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rake"

  spec.add_development_dependency "minitest"
end
