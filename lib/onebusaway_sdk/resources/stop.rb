# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Stop
      # Get details of a specific stop
      #
      # @overload retrieve(stop_id, request_options: {})
      #
      # @param stop_id [String]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::StopRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::StopRetrieveParams
      def retrieve(stop_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stop/%1$s.json", stop_id],
          model: OnebusawaySDK::Models::StopRetrieveResponse,
          options: params[:request_options]
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
