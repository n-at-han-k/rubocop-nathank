# RuboCop::NathanK

House style, as a RuboCop plugin.

[![Development Status](https://github.com/n-at-han-k/rubocop-nathan-k/workflows/Test/badge.svg)](https://github.com/n-at-han-k/rubocop-nathan-k/actions?workflow=Test)

## Installation

    bundle add rubocop-nathan-k

## Usage

``` yaml
# .rubocop.yml
plugins:
  - rubocop-nathan-k
```

## Available Cops

* `NathanK/BeginBlockAssignment` - no assigning a `begin...end`; the assignment goes inside.
* `NathanK/NoConditionalAssignment` - no assigning an `if` / `case`; assign inside each branch.
* `NathanK/NoModifierIf` - no modifier `if` / `unless`, so a guard cannot hide off the right edge.
* `NathanK/NoReturn` - no `return`; the last expression is the return value.
* `NathanK/UseTap` - `tap` where a method assigns a local and returns it.
* `NathanK/SingleLineMethodsForEvents` - a one-expression body uses the endless form.
* `NathanK/CommentStructure` - how a comment is built: unwrapped paragraphs, a summary no longer
  than the code earns, and annotations on a documented interface.

Each one reads the file under inspection with Prism rather than the parser gem tree RuboCop hands a
cop, so it walks the same tree which runs the program. The defaults, and what `CommentStructure`
takes, are in [lib/rubocop/nathan_k/config.yaml](lib/rubocop/nathan_k/config.yaml).

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
