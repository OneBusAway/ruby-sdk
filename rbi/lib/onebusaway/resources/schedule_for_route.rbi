# typed: strong

module Onebusaway
  module Resources
    class ScheduleForRoute
      sig do
        params(
          route_id: String,
          date: Date,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::ScheduleForRouteRetrieveResponse)
      end
      def retrieve(route_id, date: nil, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
