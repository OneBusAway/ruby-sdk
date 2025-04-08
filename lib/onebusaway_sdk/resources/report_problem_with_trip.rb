# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class ReportProblemWithTrip
      # Submit a user-generated problem report for a particular trip.
      #
      # @overload retrieve(trip_id, code: nil, service_date: nil, stop_id: nil, user_comment: nil, user_lat: nil, user_location_accuracy: nil, user_lon: nil, user_on_vehicle: nil, user_vehicle_number: nil, vehicle_id: nil, request_options: {})
      #
      # @param trip_id [String]
      # @param code [Symbol, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code]
      # @param service_date [Integer]
      # @param stop_id [String]
      # @param user_comment [String]
      # @param user_lat [Float]
      # @param user_location_accuracy [Float]
      # @param user_lon [Float]
      # @param user_on_vehicle [Boolean]
      # @param user_vehicle_number [String]
      # @param vehicle_id [String]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::ResponseWrapper]
      #
      # @see OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams
      def retrieve(trip_id, params = {})
        parsed, options = OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/report-problem-with-trip/%1$s.json", trip_id],
          query: parsed.transform_keys(
            service_date: :serviceDate,
            stop_id: :stopID,
            user_comment: :userComment,
            user_lat: :userLat,
            user_location_accuracy: :userLocationAccuracy,
            user_lon: :userLon,
            user_on_vehicle: :userOnVehicle,
            user_vehicle_number: :userVehicleNumber,
            vehicle_id: :vehicleID
          ),
          model: OnebusawaySDK::Models::ResponseWrapper,
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
