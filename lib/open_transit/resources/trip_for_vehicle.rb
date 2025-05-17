# frozen_string_literal: true

module OpenTransit
  module Resources
    class TripForVehicle
      # Some parameter documentations has been truncated, see
      # {OpenTransit::Models::TripForVehicleRetrieveParams} for more details.
      #
      # Retrieve trip for a specific vehicle
      #
      # @overload retrieve(vehicle_id, include_schedule: nil, include_status: nil, include_trip: nil, time: nil, request_options: {})
      #
      # @param vehicle_id [String] ID of the vehicle to retrieve trip details for.
      #
      # @param include_schedule [Boolean] Determines whether full <schedule/> element is included in the <tripDetails/> se
      #
      # @param include_status [Boolean] Determines whether the full <status/> element is included in the <tripDetails/>
      #
      # @param include_trip [Boolean] Determines whether full <trip/> element is included in the <references/> section
      #
      # @param time [Integer] Time parameter to query the system at a specific time (optional).
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::TripForVehicleRetrieveResponse]
      #
      # @see OpenTransit::Models::TripForVehicleRetrieveParams
      def retrieve(vehicle_id, params = {})
        parsed, options = OpenTransit::TripForVehicleRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/trip-for-vehicle/%1$s.json", vehicle_id],
          query: parsed.transform_keys(
            include_schedule: "includeSchedule",
            include_status: "includeStatus",
            include_trip: "includeTrip"
          ),
          model: OpenTransit::Models::TripForVehicleRetrieveResponse,
          options: options
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
