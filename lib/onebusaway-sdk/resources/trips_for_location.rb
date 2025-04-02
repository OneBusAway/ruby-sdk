# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripsForLocation
      # Retrieve trips for a given location
      #
      # @param params [OnebusawaySDK::Models::TripsForLocationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Float] :lat The latitude coordinate of the search center
      #
      #   @option params [Float] :lat_span Latitude span of the search bounding box
      #
      #   @option params [Float] :lon The longitude coordinate of the search center
      #
      #   @option params [Float] :lon_span Longitude span of the search bounding box
      #
      #   @option params [Boolean] :include_schedule Whether to include full schedule elements in the tripDetails section. Defaults
      #     to false.
      #
      #   @option params [Boolean] :include_trip Whether to include full trip elements in the references section. Defaults to
      #     false.
      #
      #   @option params [Integer] :time Specific time for the query. Defaults to the current time.
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
