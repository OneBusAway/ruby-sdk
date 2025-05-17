# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::SearchForRoute#list
    class SearchForRouteListParams < OnebusawaySDK::Internal::Type::BaseModel
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
      #   @param input [String] The string to search for.
      #
      #   @param max_count [Integer] The max number of results to return. Defaults to 20.
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
