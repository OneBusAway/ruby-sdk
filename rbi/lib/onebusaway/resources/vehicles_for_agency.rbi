# typed: strong

module Onebusaway
  module Resources
    class VehiclesForAgency
      sig do
        params(
          agency_id: String,
          time: String,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::VehiclesForAgencyListResponse)
      end
      def list(agency_id, time: nil, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
