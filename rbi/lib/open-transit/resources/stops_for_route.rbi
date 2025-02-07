# typed: strong

module OpenTransit
  module Resources
    class StopsForRoute
      sig do
        params(
          route_id: String,
          include_polylines: T::Boolean,
          time: String,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::StopsForRouteListResponse)
      end
      def list(route_id, include_polylines: nil, time: nil, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
