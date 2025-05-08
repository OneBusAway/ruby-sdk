# typed: strong

module OnebusawaySDK
  module Resources
    class RouteIDsForAgency
      # Get route IDs for a specific agency
      sig do
        params(
          agency_id: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(OnebusawaySDK::Models::RouteIDsForAgencyListResponse)
      end
      def list(
        # ID of the agency
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
