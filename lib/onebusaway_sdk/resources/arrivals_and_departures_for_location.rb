# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class ArrivalsAndDeparturesForLocation
      # Some parameter documentations has been truncated, see
      # {OnebusawaySDK::Models::ArrivalsAndDeparturesForLocationListParams} for more
      # details.
      #
      # Returns real-time arrival and departure data for stops within a bounding box or
      # radius centered on a specific location.
      #
      # @overload list(lat:, lon:, empty_returns_not_found: nil, lat_span: nil, lon_span: nil, max_count: nil, minutes_after: nil, minutes_before: nil, radius: nil, route_type: nil, time: nil, request_options: {})
      #
      # @param lat [Float] The latitude coordinate of the search center.
      #
      # @param lon [Float] The longitude coordinate of the search center.
      #
      # @param empty_returns_not_found [Boolean] If true, returns a 404 Not Found error instead of an empty result.
      #
      # @param lat_span [Float] Sets the latitude limits of the search bounding box.
      #
      # @param lon_span [Float] Sets the longitude limits of the search bounding box.
      #
      # @param max_count [Integer] The max size of the list of nearby stops and arrivals to return. Defaults to 250
      #
      # @param minutes_after [Integer] Include arrivals and departures this many minutes after the query time.
      #
      # @param minutes_before [Integer] Include arrivals and departures this many minutes before the query time.
      #
      # @param radius [Float] The search radius in meters.
      #
      # @param route_type [String] Optional list of GTFS routeTypes to filter by (comma delimited) e.g. "1,2,3".
      #
      # @param time [Integer] By default, returns the status right now. Can be queried at a specific time (mil
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::ArrivalsAndDeparturesForLocationListResponse]
      #
      # @see OnebusawaySDK::Models::ArrivalsAndDeparturesForLocationListParams
      def list(params)
        parsed, options = OnebusawaySDK::ArrivalsAndDeparturesForLocationListParams.dump_request(params)
        query = OnebusawaySDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/where/arrivals-and-departures-for-location.json",
          query: query.transform_keys(
            empty_returns_not_found: "emptyReturnsNotFound",
            lat_span: "latSpan",
            lon_span: "lonSpan",
            max_count: "maxCount",
            minutes_after: "minutesAfter",
            minutes_before: "minutesBefore",
            route_type: "routeType"
          ),
          model: OnebusawaySDK::Models::ArrivalsAndDeparturesForLocationListResponse,
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
