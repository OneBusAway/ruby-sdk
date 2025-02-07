# typed: strong

module Onebusaway
  module Resources
    class SearchForRoute
      sig do
        params(
          input: String,
          max_count: Integer,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::SearchForRouteListResponse)
      end
      def list(input:, max_count: nil, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
