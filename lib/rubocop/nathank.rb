# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2026, by Nathan Kidd.

require "rubocop"

require_relative "nathank/version"
require_relative "nathank/plugin"
require_relative "nathank/begin_block_assignment"
require_relative "nathank/comment_structure"
require_relative "nathank/no_conditional_assignment"
require_relative "nathank/no_modifier_if"
require_relative "nathank/no_return"
require_relative "nathank/single_line_methods_for_events"
require_relative "nathank/use_tap"

# @namespace
module RuboCop
  # @namespace
  module Nathank
  end
end
