# frozen_string_literal: true

require_relative "lib/alchemystai/version"

Gem::Specification.new do |s|
  s.name = "alchemystai"
  s.version = Alchemystai::VERSION
  s.summary = "Ruby library to access the Alchemyst AI API"
  s.authors = ["Alchemyst AI"]
  s.email = "anuran@getalchemystai.com"
  s.homepage = "https://gemdocs.org/gems/alchemystai"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/Alchemyst-ai/alchemyst-sdk-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
