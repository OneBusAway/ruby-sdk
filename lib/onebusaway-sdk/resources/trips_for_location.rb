# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripsForLocation
      # Retrieve trips for a given location
      #
      # @overload list(lat:, lat_span:, lon:, lon_span:, include_schedule: nil, include_trip: nil, time: nil, request_options: {})
      #
      # @param lat [Float]
      # @param lat_span [Float]
      # @param lon [Float]
      # @param lon_span [Float]
      # @param include_schedule [Boolean]
      # @param include_trip [Boolean]
      # @param time [Integer]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::TripsForLocationListResponse]
      #
      # @see OnebusawaySDK::Models::TripsForLocationListParams
      def list(params)
        parsed, options = OnebusawaySDK::Models::TripsForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/trips-for-location.json",
          query: parsed,
          model: OnebusawaySDK::Models::TripsForLocationListResponse,
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
