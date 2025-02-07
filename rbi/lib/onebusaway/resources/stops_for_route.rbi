# typed: strong

module Onebusaway
  module Resources
    class StopsForRoute
      sig do
        params(
          route_id: String,
          include_polylines: T::Boolean,
          time: String,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::StopsForRouteListResponse)
      end
      def list(route_id, include_polylines: nil, time: nil, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
