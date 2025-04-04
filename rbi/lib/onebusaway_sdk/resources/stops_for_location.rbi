# typed: strong

module OnebusawaySDK
  module Resources
    class StopsForLocation
      # stops-for-location
      sig do
        params(
          lat: Float,
          lon: Float,
          lat_span: Float,
          lon_span: Float,
          query: String,
          radius: Float,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash))
        )
          .returns(OnebusawaySDK::Models::StopsForLocationListResponse)
      end
      def list(
        lat:,
        lon:,
        # An alternative to radius to set the search bounding box (optional)
        lat_span: nil,
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
