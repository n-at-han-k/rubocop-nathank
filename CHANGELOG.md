# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0] - 2026-10-29

### Changed

- The plugin sets `AllCops/DisabledByDefault`, which is what it was always for:
  RuboCop's own cops are off and the house cops are on, so a project needs
  nothing in its `.rubocop.yml` beyond the `plugins:` entry.
- A project must no longer set `AllCops/DisabledByDefault` itself. Your config is
  merged over the plugin's, so setting it again takes the house cops off along
  with RuboCop's and the run reports nothing. Remove it, and remove the
  `Nathank/*: Enabled: true` lines it made necessary.

### Removed

- `Nathank/SingleLineMethodsForEvents`. Endless methods are a matter of taste
  rather than house style, and the cop raised on any file holding a method with
  its own `rescue`, which took it out of the run without saying so. Remove any
  `.rubocop.yml` entry for it.

### Fixed

- `prism_statements` reads the statements of a `BeginNode`, so a method with its
  own `rescue` or `ensure` no longer raises `undefined method 'body'`.

## [1.0.0] - 2026-10-27

### Added

- `lib/rubocop/nathank.rb` now `require "rubocop"` itself, so loading the plugin
  no longer assumes RuboCop has already been required.

### Changed

- Gem renamed from `rubocop-nathan-k` to `rubocop-nathank`. Update `bundle add`
  and the `plugins:` entry in `.rubocop.yml` to the new name.
- Department renamed from `NathanK` to `Nathank`. Rename any `.rubocop.yml`
  entries accordingly: `Nathank/BeginBlockAssignment`, `Nathank/CommentStructure`,
  `Nathank/NoConditionalAssignment`, `Nathank/NoModifierIf`, `Nathank/NoReturn`,
  `Nathank/SingleLineMethodsForEvents`, `Nathank/UseTap`.
- Namespace renamed from `RuboCop::NathanK` to `RuboCop::Nathank`; the
  lint_roller plugin class is now `RuboCop::Nathank::Plugin`, referenced by the
  gemspec's `default_lint_roller_plugin` metadata.

[Unreleased]: https://github.com/n-at-han-k/rubocop-nathank/compare/v2.0.0...HEAD
[2.0.0]: https://github.com/n-at-han-k/rubocop-nathank/compare/v1.0.0...v2.0.0
[1.0.0]: https://github.com/n-at-han-k/rubocop-nathank/releases/tag/v1.0.0
