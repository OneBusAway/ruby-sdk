# typed: strong

module OnebusawaySDK
  module Resources
    class VehiclesForAgency
      # Get vehicles for a specific agency
      sig do
        params(
          agency_id: String,
          time: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse)
      end
      def list(
        # ID of the agency
        agency_id,
        # Specific time for querying the status (timestamp format)
        time: nil,
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
