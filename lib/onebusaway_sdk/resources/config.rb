# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Config
      # config
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
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
