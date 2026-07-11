# typed: strong

module OnebusawaySDK
  module Resources
    class TripsForLocation
      # Retrieve trips for a given location
      sig do
        params(
          lat_span: Float,
          lon_span: Float,
          include_schedule: T::Boolean,
          include_trip: T::Boolean,
          lat: Float,
          lon: Float,
          time: Integer,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(OnebusawaySDK::Models::TripsForLocationListResponse)
      end
      def list(
        # Latitude span of the search bounding box
        lat_span:,
        # Longitude span of the search bounding box
        lon_span:,
        # Whether to include full schedule elements in the tripDetails section. Defaults
        # to false.
        include_schedule: nil,
        # Whether to include full trip elements in the references section. Defaults to
        # true.
        include_trip: nil,
        # The latitude coordinate of the search center. If omitted, defaults to 0.0.
        lat: nil,
        # The longitude coordinate of the search center. If omitted, defaults to 0.0.
        lon: nil,
        # Specific time for the query. Defaults to the current time.
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
