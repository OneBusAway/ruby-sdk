# frozen_string_literal: true

require_relative "lib/onebusaway_sdk/version"

Gem::Specification.new do |s|
  s.name = "onebusaway-sdk"
  s.version = OnebusawaySDK::VERSION
  s.summary = "Ruby library to access the Onebusaway SDK API"
  s.authors = ["Onebusaway SDK"]
  s.email = "info@onebusaway.org"
  s.homepage = "https://gemdocs.org/gems/onebusaway-sdk"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/OneBusAway/ruby-sdk"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.0.0"

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
