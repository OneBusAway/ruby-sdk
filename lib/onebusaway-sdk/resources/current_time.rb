# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class CurrentTime
      # current-time
      #
      # @param params [OnebusawaySDK::Models::CurrentTimeRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
