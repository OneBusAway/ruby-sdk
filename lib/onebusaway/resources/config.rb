# frozen_string_literal: true

module Onebusaway
  module Resources
    class Config
      # config
      #
      # @param params [Onebusaway::Models::ConfigRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::ConfigRetrieveResponse]
      #
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/where/config.json",
          model: Onebusaway::Models::ConfigRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @param client [Onebusaway::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
