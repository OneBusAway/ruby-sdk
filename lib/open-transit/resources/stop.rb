# frozen_string_literal: true

module OpenTransit
  module Resources
    class Stop
      # Get details of a specific stop
      #
      # @param stop_id [String] ID of the stop
      #
      # @param params [OpenTransit::Models::StopRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::StopRetrieveResponse]
      #
      def retrieve(stop_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stop/%0s.json", stop_id],
          model: OpenTransit::Models::StopRetrieveResponse,
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
