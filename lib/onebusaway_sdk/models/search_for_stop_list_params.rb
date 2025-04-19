# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::SearchForStop#list
    class SearchForStopListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute input
      #   The string to search for.
      #
      #   @return [String]
      required :input, String

      # @!attribute max_count
      #   The max number of results to return. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :max_count, Integer

      # @!method initialize(input:, max_count: nil, request_options: {})
      #   @param input [String]
      #   @param max_count [Integer]
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
