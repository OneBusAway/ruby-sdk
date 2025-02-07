# frozen_string_literal: true

module OpenTransit
  module Resources
    class SearchForStop
      # Search for a stop based on its name.
      #
      # @param params [OpenTransit::Models::SearchForStopListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :input The string to search for.
      #
      #   @option params [Integer] :max_count The max number of results to return. Defaults to 20.
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::SearchForStopListResponse]
      #
      def list(params)
        parsed, options = OpenTransit::Models::SearchForStopListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/search/stop.json",
          query: parsed,
          model: OpenTransit::Models::SearchForStopListResponse,
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
