# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::SearchForStop#list
    class SearchForStopListParams < OnebusawaySDK::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Type::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # @!attribute input
      #   The string to search for.
      #
      #   @return [String]
      required :input, String

      # @!attribute [r] max_count
      #   The max number of results to return. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :max_count, Integer, api_name: :maxCount

      # @!parse
      #   # @return [Integer]
      #   attr_writer :max_count

      # @!parse
      #   # @param input [String]
      #   # @param max_count [Integer]
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(input:, max_count: nil, request_options: {}, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
    end
  end
end
