# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Stop
      # Get details of a specific stop
      #
      # @param stop_id [String] ID of the stop
      #
      # @param params [OnebusawaySDK::Models::StopRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::StopRetrieveResponse]
      #
      def retrieve(stop_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stop/%0s.json", stop_id],
          model: OnebusawaySDK::Models::StopRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @param client [OnebusawaySDK::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
