# typed: strong

module OnebusawaySDK
  module Resources
    class Agency
      # Retrieve information for a specific transit agency identified by its unique ID.
      sig do
        params(
          agency_id: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(OnebusawaySDK::Models::AgencyRetrieveResponse)
      end
      def retrieve(
        # The ID of the transit agency.
        agency_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
