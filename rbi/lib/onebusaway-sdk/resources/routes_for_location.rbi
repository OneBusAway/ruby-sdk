# typed: strong

module OnebusawaySDK
  module Resources
    class RoutesForLocation
      # routes-for-location
      sig do
        params(
          lat: Float,
          lon: Float,
          lat_span: Float,
          lon_span: Float,
          query: String,
          radius: Float,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::RoutesForLocationListResponse)
      end
      def list(lat:, lon:, lat_span: nil, lon_span: nil, query: nil, radius: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
