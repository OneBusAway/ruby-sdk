# frozen_string_literal: true

module Onebusaway
  module Resources
    class Stop
      # Get details of a specific stop
      #
      # @param stop_id [String] ID of the stop
      #
      # @param params [Onebusaway::Models::StopRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::StopRetrieveResponse]
      #
      def retrieve(stop_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stop/%0s.json", stop_id],
          model: Onebusaway::Models::StopRetrieveResponse,
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
