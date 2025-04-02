# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Trip
      # Get details of a specific trip
      #
      # @param trip_id [String] ID of the trip
      #
      # @param params [OnebusawaySDK::Models::TripRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::TripRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::TripRetrieveParams
      def retrieve(trip_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/trip/%1$s.json", trip_id],
          model: OnebusawaySDK::Models::TripRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
