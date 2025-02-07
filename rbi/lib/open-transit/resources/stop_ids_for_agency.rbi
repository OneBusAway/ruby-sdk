# typed: strong

module OpenTransit
  module Resources
    class StopIDsForAgency
      sig do
        params(
          agency_id: String,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::StopIDsForAgencyListResponse)
      end
      def list(agency_id, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
