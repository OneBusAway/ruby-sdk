# frozen_string_literal: true

module OpenTransit
  module Resources
    class Trip
      # Get details of a specific trip
      #
      # @overload retrieve(trip_id, request_options: {})
      #
      # @param trip_id [String] ID of the trip
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::TripRetrieveResponse]
      #
      # @see OpenTransit::Models::TripRetrieveParams
      def retrieve(trip_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/trip/%1$s.json", trip_id],
          model: OpenTransit::Models::TripRetrieveResponse,
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
