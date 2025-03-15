# typed: strong

module OnebusawaySDK
  module Resources
    class Agency
      # Retrieve information for a specific transit agency identified by its unique ID.
      sig do
        params(
          agency_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::AgencyRetrieveResponse)
      end
      def retrieve(agency_id, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
