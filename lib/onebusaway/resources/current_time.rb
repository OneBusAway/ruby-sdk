# frozen_string_literal: true

module Onebusaway
  module Resources
    class CurrentTime
      # current-time
      #
      # @param params [Onebusaway::Models::CurrentTimeRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::CurrentTimeRetrieveResponse]
      #
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/where/current-time.json",
          model: Onebusaway::Models::CurrentTimeRetrieveResponse,
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
