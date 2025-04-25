# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Trip
      # Get details of a specific trip
      #
      # @overload retrieve(trip_id, request_options: {})
      #
      # @param trip_id [String] ID of the trip
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
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
