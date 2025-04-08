# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripDetails
      # Retrieve Trip Details
      #
      # @overload retrieve(trip_id, include_schedule: nil, include_status: nil, include_trip: nil, service_date: nil, time: nil, request_options: {})
      #
      # @param trip_id [String]
      # @param include_schedule [Boolean]
      # @param include_status [Boolean]
      # @param include_trip [Boolean]
      # @param service_date [Integer]
      # @param time [Integer]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::TripDetailRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::TripDetailRetrieveParams
      def retrieve(trip_id, params = {})
        parsed, options = OnebusawaySDK::Models::TripDetailRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/trip-details/%1$s.json", trip_id],
          query: parsed.transform_keys(
            include_schedule: :includeSchedule,
            include_status: :includeStatus,
            include_trip: :includeTrip,
            service_date: :serviceDate
          ),
          model: OnebusawaySDK::Models::TripDetailRetrieveResponse,
          options: options
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
