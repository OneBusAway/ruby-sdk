# frozen_string_literal: true

module OpenTransit
  module Resources
    class Trip
      # Get details of a specific trip
      #
      # @param trip_id [String] ID of the trip
      #
      # @param params [OpenTransit::Models::TripRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::TripRetrieveResponse]
      #
      def retrieve(trip_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/trip/%0s.json", trip_id],
          model: OpenTransit::Models::TripRetrieveResponse,
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
