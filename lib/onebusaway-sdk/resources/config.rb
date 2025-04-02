# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Config
      # config
      #
      # @param params [OnebusawaySDK::Models::ConfigRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::ConfigRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::ConfigRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/where/config.json",
          model: OnebusawaySDK::Models::ConfigRetrieveResponse,
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
