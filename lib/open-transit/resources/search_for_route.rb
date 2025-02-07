# frozen_string_literal: true

module OpenTransit
  module Resources
    class SearchForRoute
      # Search for a route based on its name.
      #
      # @param params [OpenTransit::Models::SearchForRouteListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :input The string to search for.
      #
      #   @option params [Integer] :max_count The max number of results to return. Defaults to 20.
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::SearchForRouteListResponse]
      #
      def list(params)
        parsed, options = OpenTransit::Models::SearchForRouteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/search/route.json",
          query: parsed,
          model: OpenTransit::Models::SearchForRouteListResponse,
          options: options
        )
      end

      # @param client [OpenTransit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
