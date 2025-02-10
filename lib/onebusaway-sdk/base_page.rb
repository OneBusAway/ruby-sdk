# frozen_string_literal: true

module OnebusawaySDK
  # @private
  #
  # @abstract
  #
  module BasePage
    # rubocop:disable Lint/UnusedMethodArgument

    # @return [Boolean]
    #
    def next_page? = (raise NotImplementedError)

    # @raise [OnebusawaySDK::APIError]
    # @return [OnebusawaySDK::BasePage]
    #
    def next_page = (raise NotImplementedError)

    # @param blk [Proc]
    #
    # @return [void]
    #
    def auto_paging_each(&blk) = (raise NotImplementedError)

    # @return [Enumerable]
    #
    def to_enum = super(:auto_paging_each)

    alias_method :enum_for, :to_enum

    # @!parse
    #   # @private
    #   #
    #   # @param client [OnebusawaySDK::BaseClient]
    #   # @param req [Hash{Symbol=>Object}]
    #   # @param headers [Hash{String=>String}]
    #   # @param unwrapped [Object]
    #   #
    #   def initialize(client:, req:, headers:, unwrapped:); end

    # rubocop:enable Lint/UnusedMethodArgument
  end
end
