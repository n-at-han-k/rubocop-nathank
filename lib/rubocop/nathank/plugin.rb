# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2026, by Nathan Kidd.

require "lint_roller"
require_relative "version"

module RuboCop
  module Nathank
    # Represents a LintRoller plugin that provides RuboCop rules for Nathank projects.
    # This plugin integrates custom RuboCop cops and configuration into the LintRoller system.
    class Plugin < LintRoller::Plugin
      # Initialize the plugin with version information.
      def initialize(...)
        super
        @version = RuboCop::Nathank::VERSION
      end

      # Get information about this plugin for the LintRoller system.
      # @returns [LintRoller::About] Plugin metadata including name, version, and description.
      def about
        LintRoller::About.new(
          name: "rubocop-nathank",
          version: @version,
          homepage: "https://github.com/n-at-han-k/rubocop-nathank",
          description: "RuboCop rules for Nathank projects."
        )
      end

      # Define the rules configuration for this plugin.
      # @parameter context [Object] The LintRoller context object.
      # @returns [LintRoller::Rules] Rules configuration specifying the path to the default RuboCop config.
      def rules(context)
        LintRoller::Rules.new(
          type: :path,
          config_format: :rubocop,
          value: File.expand_path("config.yaml", __dir__),
        )
      end
    end
  end
end
