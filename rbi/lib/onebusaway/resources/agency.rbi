# typed: strong

module Onebusaway
  module Resources
    class Agency
      sig do
        params(
          agency_id: String,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::AgencyRetrieveResponse)
      end
      def retrieve(agency_id, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
