# frozen_string_literal: true

module OnebusawaySDK
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{OnebusawaySDK::Internal}::OMIT>" }
      end
        .freeze
  end
end
