# typed: strong

module OpenTransit
  module Resources
    class VehiclesForAgency
      # Get vehicles for a specific agency
      sig do
        params(
          agency_id: String,
          time: String,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(OpenTransit::Models::VehiclesForAgencyListResponse)
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
      sig { params(client: OpenTransit::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
