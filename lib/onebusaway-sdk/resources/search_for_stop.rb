# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class SearchForStop
      # Search for a stop based on its name.
      #
      # @overload list(input:, max_count: nil, request_options: {})
      #
      # @param input [String]
      # @param max_count [Integer]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
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
