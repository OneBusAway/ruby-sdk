# frozen_string_literal: true

module OpenTransit
  module Resources
    class CurrentTime
      # current-time
      #
      # @param params [OpenTransit::Models::CurrentTimeRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::CurrentTimeRetrieveResponse]
      #
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/where/current-time.json",
          model: OpenTransit::Models::CurrentTimeRetrieveResponse,
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
