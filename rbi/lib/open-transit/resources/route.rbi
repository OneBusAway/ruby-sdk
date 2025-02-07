# typed: strong

module OpenTransit
  module Resources
    class Route
      sig do
        params(
          route_id: String,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::RouteRetrieveResponse)
      end
      def retrieve(route_id, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
