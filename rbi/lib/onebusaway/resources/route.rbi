# typed: strong

module Onebusaway
  module Resources
    class Route
      sig do
        params(
          route_id: String,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::RouteRetrieveResponse)
      end
      def retrieve(route_id, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
