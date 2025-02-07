# typed: strong

module OpenTransit
  module Resources
    class RouteIDsForAgency
      sig do
        params(
          agency_id: String,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::RouteIDsForAgencyListResponse)
      end
      def list(agency_id, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
