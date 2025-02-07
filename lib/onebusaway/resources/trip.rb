# frozen_string_literal: true

module Onebusaway
  module Resources
    class Trip
      # Get details of a specific trip
      #
      # @param trip_id [String] ID of the trip
      #
      # @param params [Onebusaway::Models::TripRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::TripRetrieveResponse]
      #
      def retrieve(trip_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/trip/%0s.json", trip_id],
          model: Onebusaway::Models::TripRetrieveResponse,
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
