# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::SearchForRoute#list
    class SearchForRouteListParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

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
      #   @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
