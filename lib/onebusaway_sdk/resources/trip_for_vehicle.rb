# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripForVehicle
      # Retrieve trip for a specific vehicle
      #
      # @overload retrieve(vehicle_id, include_schedule: nil, include_status: nil, include_trip: nil, time: nil, request_options: {})
      #
      # @param vehicle_id [String]
      # @param include_schedule [Boolean]
      # @param include_status [Boolean]
      # @param include_trip [Boolean]
      # @param time [Integer]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::TripForVehicleRetrieveParams
      def retrieve(vehicle_id, params = {})
        parsed, options = OnebusawaySDK::Models::TripForVehicleRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/trip-for-vehicle/%1$s.json", vehicle_id],
          query: parsed.transform_keys(
            include_schedule: "includeSchedule",
            include_status: "includeStatus",
            include_trip: "includeTrip"
          ),
          model: OnebusawaySDK::Models::TripForVehicleRetrieveResponse,
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
