# typed: strong

module OpenTransit
  module Resources
    class TripsForRoute
      sig do
        params(
          route_id: String,
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          time: Integer,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::TripsForRouteListResponse)
      end
      def list(route_id, include_schedule: nil, include_status: nil, time: nil, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
