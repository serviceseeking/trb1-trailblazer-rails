require "trb1/trailblazer/rails/version"

module Trb1
  module Trailblazer
    module Rails
      # Your code goes here...
    end
  end
end

require "reform/rails"
require "trb1/trailblazer/rails/railtie"

require "trb1-trailblazer/operation"
# TODO: remove that once i18n, validations etc in Reform/AM are sorted.
Trb1::Trailblazer::Operation.contract_class.class_eval do
  def self.name
    # for whatever reason, validations climb up the inheritance tree and require _every_ class to have a name (4.1).
    "Reform::Form"
  end
end

# Automatically set model_name on operation's contract when `Op::Model` is included.
require "trb1-trailblazer/operation/model"
require "trb1/trailblazer/operation/model/active_model"
Trb1::Trailblazer::Operation::Model::DSL.module_eval do
  include Trb1::Trailblazer::Operation::Model::ActiveModel # ::contract.
end

require "trb1-trailblazer/autoloading"
require "trb1/trailblazer/rails/autoloading"
