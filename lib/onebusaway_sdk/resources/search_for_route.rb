# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class SearchForRoute
      # Search for a route based on its name.
      #
      # @overload list(input:, max_count: nil, request_options: {})
      #
      # @param input [String] The string to search for.
      #
      # @param max_count [Integer] The max number of results to return. Defaults to 20.
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::SearchForRouteListResponse]
      #
      # @see OnebusawaySDK::Models::SearchForRouteListParams
      def list(params)
        parsed, options = OnebusawaySDK::Models::SearchForRouteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/search/route.json",
          query: parsed.transform_keys(max_count: "maxCount"),
          model: OnebusawaySDK::Models::SearchForRouteListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
