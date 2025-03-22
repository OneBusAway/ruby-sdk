# typed: strong

module OnebusawaySDK
  module Resources
    class RoutesForAgency
      # Retrieve the list of all routes for a particular agency by id
      sig do
        params(
          agency_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash))
        )
          .returns(OnebusawaySDK::Models::RoutesForAgencyListResponse)
      end
      def list(
        # The id of the agency
        agency_id,
        request_options: {}
      )
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
