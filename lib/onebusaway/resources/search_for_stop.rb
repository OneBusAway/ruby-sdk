# frozen_string_literal: true

module Onebusaway
  module Resources
    class SearchForStop
      # Search for a stop based on its name.
      #
      # @param params [Onebusaway::Models::SearchForStopListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :input The string to search for.
      #
      #   @option params [Integer] :max_count The max number of results to return. Defaults to 20.
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::SearchForStopListResponse]
      #
      def list(params)
        parsed, options = Onebusaway::Models::SearchForStopListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/search/stop.json",
          query: parsed,
          model: Onebusaway::Models::SearchForStopListResponse,
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
