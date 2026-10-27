# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2026, by Nathan Kidd.

version = File.read(File.expand_path("lib/rubocop/nathank/version.rb", __dir__))[/VERSION = "([^"]+)"/, 1]

Gem::Specification.new do |spec|
  spec.name = "rubocop-nathank"
  spec.version = version
  spec.authors = ["Nathan Kidd"]
  spec.email = ["nathankidd@hey.com"]
  spec.license = "MIT"

  spec.summary = "House style, as a RuboCop plugin."
  spec.homepage = "https://github.com/n-at-han-k/rubocop-nathank"

  spec.required_ruby_version = ">= 3.3"

  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["default_lint_roller_plugin"] = "RuboCop::Nathank::Plugin"

  spec.files = Dir.glob(
    ["lib/**/*", "*.md"],
    File::FNM_DOTMATCH,
    base: __dir__,
  ).reject{|path| File.directory?(File.join(__dir__, path))}

  spec.require_paths = ["lib"]

  spec.add_dependency "decode"
  spec.add_dependency "lint_roller"
  spec.add_dependency "prism"
  spec.add_dependency "rubocop", ">= 1.72"
end
