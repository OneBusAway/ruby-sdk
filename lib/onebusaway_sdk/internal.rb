# frozen_string_literal: true

module OnebusawaySDK
  # @api private
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{OnebusawaySDK::Internal}::OMIT>" }
      end
        .freeze
  end
end
