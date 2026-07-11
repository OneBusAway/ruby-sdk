# typed: strong

module OnebusawaySDK
  module Resources
    class RoutesForLocation
      # routes-for-location
      sig do
        params(
          lat: Float,
          lat_span: Float,
          lon: Float,
          lon_span: Float,
          query: String,
          radius: Float,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(OnebusawaySDK::Models::RoutesForLocationListResponse)
      end
      def list(
        # If omitted, defaults to 0.0.
        lat: nil,
        lat_span: nil,
        # If omitted, defaults to 0.0.
        lon: nil,
        lon_span: nil,
        query: nil,
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
