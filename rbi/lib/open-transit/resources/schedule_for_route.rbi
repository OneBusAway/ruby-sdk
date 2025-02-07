# typed: strong

module OpenTransit
  module Resources
    class ScheduleForRoute
      sig do
        params(
          route_id: String,
          date: Date,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::ScheduleForRouteRetrieveResponse)
      end
      def retrieve(route_id, date: nil, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
