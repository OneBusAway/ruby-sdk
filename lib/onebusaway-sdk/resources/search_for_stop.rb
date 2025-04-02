# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class SearchForStop
      # Search for a stop based on its name.
      #
      # @param params [OnebusawaySDK::Models::SearchForStopListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :input The string to search for.
      #
      #   @option params [Integer] :max_count The max number of results to return. Defaults to 20.
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::SearchForStopListResponse]
      #
      # @see OnebusawaySDK::Models::SearchForStopListParams
      def list(params)
        parsed, options = OnebusawaySDK::Models::SearchForStopListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/search/stop.json",
          query: parsed,
          model: OnebusawaySDK::Models::SearchForStopListResponse,
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
