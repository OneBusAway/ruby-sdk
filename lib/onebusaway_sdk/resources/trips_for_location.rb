# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripsForLocation
      # Some parameter documentations has been truncated, see
      # {OnebusawaySDK::Models::TripsForLocationListParams} for more details.
      #
      # Retrieve trips for a given location
      #
      # @overload list(lat:, lat_span:, lon:, lon_span:, include_schedule: nil, include_trip: nil, time: nil, request_options: {})
      #
      # @param lat [Float] The latitude coordinate of the search center
      #
      # @param lat_span [Float] Latitude span of the search bounding box
      #
      # @param lon [Float] The longitude coordinate of the search center
      #
      # @param lon_span [Float] Longitude span of the search bounding box
      #
      # @param include_schedule [Boolean] Whether to include full schedule elements in the tripDetails section. Defaults t
      #
      # @param include_trip [Boolean] Whether to include full trip elements in the references section. Defaults to fal
      #
      # @param time [Integer] Specific time for the query. Defaults to the current time.
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::TripsForLocationListResponse]
      #
      # @see OnebusawaySDK::Models::TripsForLocationListParams
      def list(params)
        parsed, options = OnebusawaySDK::TripsForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/trips-for-location.json",
          query: parsed.transform_keys(
            lat_span: "latSpan",
            lon_span: "lonSpan",
            include_schedule: "includeSchedule",
            include_trip: "includeTrip"
          ),
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
