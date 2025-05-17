# frozen_string_literal: true

module OpenTransit
  module Resources
    class Config
      # config
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::ConfigRetrieveResponse]
      #
      # @see OpenTransit::Models::ConfigRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/where/config.json",
          model: OpenTransit::Models::ConfigRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [OpenTransit::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
