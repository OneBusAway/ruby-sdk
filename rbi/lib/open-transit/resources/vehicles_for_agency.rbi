# typed: strong

module OpenTransit
  module Resources
    class VehiclesForAgency
      sig do
        params(
          agency_id: String,
          time: String,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::VehiclesForAgencyListResponse)
      end
      def list(agency_id, time: nil, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
