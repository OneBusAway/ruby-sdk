# frozen_string_literal: true

module OpenTransit
  module Resources
    class Config
      # config
      #
      # @param params [OpenTransit::Models::ConfigRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::ConfigRetrieveResponse]
      #
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/where/config.json",
          model: OpenTransit::Models::ConfigRetrieveResponse,
          options: params[:request_options]
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
