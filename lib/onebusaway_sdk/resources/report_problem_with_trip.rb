# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class ReportProblemWithTrip
      # Submit a user-generated problem report for a particular trip.
      #
      # @overload retrieve(trip_id, code: nil, service_date: nil, stop_id: nil, user_comment: nil, user_lat: nil, user_location_accuracy: nil, user_lon: nil, user_on_vehicle: nil, user_vehicle_number: nil, vehicle_id: nil, request_options: {})
      #
      # @param trip_id [String] The ID of the trip
      #
      # @param code [Symbol, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code] A string code identifying the nature of the problem
      #
      # @param service_date [Integer] The service date of the trip
      #
      # @param stop_id [String] A stop ID indicating where the user is experiencing the problem
      #
      # @param user_comment [String] Additional comment text supplied by the user describing the problem
      #
      # @param user_lat [Float] The reporting user’s current latitude
      #
      # @param user_location_accuracy [Float] The reporting user’s location accuracy, in meters
      #
      # @param user_lon [Float] The reporting user’s current longitude
      #
      # @param user_on_vehicle [Boolean] Indicator if the user is on the transit vehicle experiencing the problem
      #
      # @param user_vehicle_number [String] The vehicle number, as reported by the user
      #
      # @param vehicle_id [String] The vehicle actively serving the trip
      #
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
            service_date: "serviceDate",
            stop_id: "stopID",
            user_comment: "userComment",
            user_lat: "userLat",
            user_location_accuracy: "userLocationAccuracy",
            user_lon: "userLon",
            user_on_vehicle: "userOnVehicle",
            user_vehicle_number: "userVehicleNumber",
            vehicle_id: "vehicleID"
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
