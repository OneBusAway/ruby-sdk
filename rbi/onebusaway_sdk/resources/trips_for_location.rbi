# typed: strong

module OnebusawaySDK
  module Resources
    class TripsForLocation
      # Retrieve trips for a given location
      sig do
        params(
          lat: Float,
          lat_span: Float,
          lon: Float,
          lon_span: Float,
          include_schedule: T::Boolean,
          include_trip: T::Boolean,
          time: Integer,
          request_options: OnebusawaySDK::RequestOpts
        )
          .returns(OnebusawaySDK::Models::TripsForLocationListResponse)
      end
      def list(
        # The latitude coordinate of the search center
        lat:,
        # Latitude span of the search bounding box
        lat_span:,
        # The longitude coordinate of the search center
        lon:,
        # Longitude span of the search bounding box
        lon_span:,
        # Whether to include full schedule elements in the tripDetails section. Defaults
        # to false.
        include_schedule: nil,
        # Whether to include full trip elements in the references section. Defaults to
        # false.
        include_trip: nil,
        # Specific time for the query. Defaults to the current time.
        time: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
