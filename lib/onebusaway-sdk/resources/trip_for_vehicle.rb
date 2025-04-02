# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripForVehicle
      # Retrieve trip for a specific vehicle
      #
      # @param vehicle_id [String] ID of the vehicle to retrieve trip details for.
      #
      # @param params [OnebusawaySDK::Models::TripForVehicleRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :include_schedule Determines whether full <schedule/> element is included in the <tripDetails/>
      #     section. Defaults to false.
      #
      #   @option params [Boolean] :include_status Determines whether the full <status/> element is included in the <tripDetails/>
      #     section. Defaults to true.
      #
      #   @option params [Boolean] :include_trip Determines whether full <trip/> element is included in the <references/>
      #     section. Defaults to false.
      #
      #   @option params [Integer] :time Time parameter to query the system at a specific time (optional).
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::TripForVehicleRetrieveParams
      def retrieve(vehicle_id, params = {})
        parsed, options = OnebusawaySDK::Models::TripForVehicleRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/trip-for-vehicle/%1$s.json", vehicle_id],
          query: parsed,
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
