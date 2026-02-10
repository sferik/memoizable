# frozen_string_literal: true

require "monitor"

require "memoizable/instance_methods"
require "memoizable/method_builder"
require "memoizable/module_methods"
require "memoizable/memory"
require "memoizable/version"

# Allow methods to be memoized
module Memoizable
  include Memoizable::InstanceMethods

  # Default freezer
  Freezer = lambda(&:freeze).freeze

  # Hook called when module is included
  #
  # @param [Module] descendant
  #   the module or class including Memoizable
  #
  # @return [self]
  #
  # @api private
  def self.included(descendant)
    super
    descendant.extend(ModuleMethods)
  end
  private_class_method :included
end
