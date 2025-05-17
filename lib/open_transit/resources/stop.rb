# frozen_string_literal: true

module OpenTransit
  module Resources
    class Stop
      # Get details of a specific stop
      #
      # @overload retrieve(stop_id, request_options: {})
      #
      # @param stop_id [String] ID of the stop
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::StopRetrieveResponse]
      #
      # @see OpenTransit::Models::StopRetrieveParams
      def retrieve(stop_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stop/%1$s.json", stop_id],
          model: OpenTransit::Models::StopRetrieveResponse,
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
