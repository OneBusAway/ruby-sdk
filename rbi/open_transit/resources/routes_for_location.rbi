# typed: strong

module OpenTransit
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
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(OpenTransit::Models::RoutesForLocationListResponse)
      end
      def list(
        lat:,
        lon:,
        lat_span: nil,
        lon_span: nil,
        query: nil,
        radius: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: OpenTransit::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
