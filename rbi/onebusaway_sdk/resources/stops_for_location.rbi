# typed: strong

module OnebusawaySDK
  module Resources
    class StopsForLocation
      # stops-for-location
      sig do
        params(
          lat: Float,
          lat_span: Float,
          lon: Float,
          lon_span: Float,
          query: String,
          radius: Float,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(OnebusawaySDK::Models::StopsForLocationListResponse)
      end
      def list(
        # If omitted, defaults to 0.0.
        lat: nil,
        # An alternative to radius to set the search bounding box (optional)
        lat_span: nil,
        # If omitted, defaults to 0.0.
        lon: nil,
        # An alternative to radius to set the search bounding box (optional)
        lon_span: nil,
        # A search query string to filter the results
        query: nil,
        # The radius in meters to search within
        radius: nil,
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
