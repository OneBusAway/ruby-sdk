# frozen_string_literal: true

module Onebusaway
  module Resources
    class SearchForRoute
      # Search for a route based on its name.
      #
      # @param params [Onebusaway::Models::SearchForRouteListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :input The string to search for.
      #
      #   @option params [Integer] :max_count The max number of results to return. Defaults to 20.
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::SearchForRouteListResponse]
      #
      def list(params)
        parsed, options = Onebusaway::Models::SearchForRouteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/search/route.json",
          query: parsed,
          model: Onebusaway::Models::SearchForRouteListResponse,
          options: options
        )
      end

      # @param client [Onebusaway::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
