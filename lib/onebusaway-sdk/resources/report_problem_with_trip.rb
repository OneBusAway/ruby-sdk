# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class ReportProblemWithTrip
      # Submit a user-generated problem report for a particular trip.
      #
      # @param trip_id [String] The ID of the trip
      #
      # @param params [OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code] :code A string code identifying the nature of the problem
      #
      #   @option params [Integer] :service_date The service date of the trip
      #
      #   @option params [String] :stop_id A stop ID indicating where the user is experiencing the problem
      #
      #   @option params [String] :user_comment Additional comment text supplied by the user describing the problem
      #
      #   @option params [Float] :user_lat The reporting user’s current latitude
      #
      #   @option params [Float] :user_location_accuracy The reporting user’s location accuracy, in meters
      #
      #   @option params [Float] :user_lon The reporting user’s current longitude
      #
      #   @option params [Boolean] :user_on_vehicle Indicator if the user is on the transit vehicle experiencing the problem
      #
      #   @option params [String] :user_vehicle_number The vehicle number, as reported by the user
      #
      #   @option params [String] :vehicle_id The vehicle actively serving the trip
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::ResponseWrapper]
      def retrieve(trip_id, params = {})
        parsed, options = OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/report-problem-with-trip/%0s.json", trip_id],
          query: parsed,
          model: OnebusawaySDK::Models::ResponseWrapper,
          options: options
        )
      end

      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
