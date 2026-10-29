# RuboCop::Nathank

House style, as a RuboCop plugin.

[![Development Status](https://github.com/n-at-han-k/rubocop-nathank/workflows/Test/badge.svg)](https://github.com/n-at-han-k/rubocop-nathank/actions?workflow=Test)

## Installation

    bundle add rubocop-nathank

## Usage

``` yaml
# .rubocop.yml
plugins:
  - rubocop-nathank
```

That is the whole configuration. The plugin sets `AllCops/DisabledByDefault`, so RuboCop's own
cops are off and the ones below are on: the house style is what these cops say rather than what
the defaults say, and a project does not have to list them to get them.

A default you want back is enabled by name, and a house cop you do not want is disabled the same
way, because your `.rubocop.yml` is merged over the plugin's:

``` yaml
# .rubocop.yml
plugins:
  - rubocop-nathank

Style/StringLiterals:
  Enabled: true
  EnforcedStyle: double_quotes

Nathank/NoReturn:
  Enabled: false
```

What you must not do is set `AllCops/DisabledByDefault` yourself. The plugin already sets it, and
your file is merged over the plugin's: setting it again takes the plugin's own cops off along with
RuboCop's, and you get a run which inspects every file and reports nothing.

## Available Cops

* `Nathank/BeginBlockAssignment` - no assigning a `begin...end`; the assignment goes inside.
* `Nathank/NoConditionalAssignment` - no assigning an `if` / `case`; assign inside each branch.
* `Nathank/NoModifierIf` - no modifier `if` / `unless`, so a guard cannot hide off the right edge.
* `Nathank/NoReturn` - no `return`; the last expression is the return value.
* `Nathank/UseTap` - `tap` where a method assigns a local and returns it.
* `Nathank/CommentStructure` - how a comment is built: unwrapped paragraphs, a summary no longer
  than the code earns, and annotations on a documented interface.

Each one reads the file under inspection with Prism rather than the parser gem tree RuboCop hands a
cop, so it walks the same tree which runs the program. The defaults, and what `CommentStructure`
takes, are in [lib/rubocop/nathank/config.yaml](lib/rubocop/nathank/config.yaml).

## Releases

Please see [releases.md](releases.md) for all releases.

## Contributing

We welcome contributions to this project.

1.  Fork it.
2.  Create your feature branch (`git checkout -b my-new-feature`).
3.  Commit your changes (`git commit -am 'Add some feature'`).
4.  Push to the branch (`git push origin my-new-feature`).
5.  Create new Pull Request.

### Developer Certificate of Origin

In order to protect users of this project, we require all contributors to comply with the [Developer Certificate of Origin](https://developercertificate.org/). This ensures that all contributions are properly licensed and attributed.

### Community Guidelines

This project is best served by a collaborative and respectful environment. Treat each other professionally, respect differing viewpoints, and engage constructively. Harassment, discrimination, or harmful behavior is not tolerated. Communicate clearly, listen actively, and support one another. If any issues arise, please inform the project maintainers.
