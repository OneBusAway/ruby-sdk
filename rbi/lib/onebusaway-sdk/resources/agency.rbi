# typed: strong

module OnebusawaySDK
  module Resources
    class Agency
      sig do
        params(
          agency_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::AgencyRetrieveResponse)
      end
      def retrieve(agency_id, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
