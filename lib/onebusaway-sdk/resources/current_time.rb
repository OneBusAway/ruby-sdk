# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class CurrentTime
      # current-time
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::CurrentTimeRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::CurrentTimeRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/where/current-time.json",
          model: OnebusawaySDK::Models::CurrentTimeRetrieveResponse,
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
