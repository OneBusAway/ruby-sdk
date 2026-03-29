# typed: strong

module OnebusawaySDK
  module Resources
    class ArrivalsAndDeparturesForLocation
      # Returns real-time arrival and departure data for stops within a bounding box or
      # radius centered on a specific location.
      sig do
        params(
          lat: Float,
          lon: Float,
          empty_returns_not_found: T::Boolean,
          lat_span: Float,
          lon_span: Float,
          max_count: Integer,
          minutes_after: Integer,
          minutes_before: Integer,
          radius: Float,
          route_type: String,
          time: Integer,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(
          OnebusawaySDK::Models::ArrivalsAndDeparturesForLocationListResponse
        )
      end
      def list(
        # The latitude coordinate of the search center.
        lat:,
        # The longitude coordinate of the search center.
        lon:,
        # If true, returns a 404 Not Found error instead of an empty result.
        empty_returns_not_found: nil,
        # Sets the latitude limits of the search bounding box.
        lat_span: nil,
        # Sets the longitude limits of the search bounding box.
        lon_span: nil,
        # The max size of the list of nearby stops and arrivals to return. Defaults to
        # 250, max 1000.
        max_count: nil,
        # Include arrivals and departures this many minutes after the query time.
        minutes_after: nil,
        # Include arrivals and departures this many minutes before the query time.
        minutes_before: nil,
        # The search radius in meters.
        radius: nil,
        # Optional list of GTFS routeTypes to filter by (comma delimited) e.g. "1,2,3".
        route_type: nil,
        # By default, returns the status right now. Can be queried at a specific time
        # (milliseconds since epoch) for testing.
        time: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
