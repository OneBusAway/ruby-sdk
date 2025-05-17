# typed: strong

module OpenTransit
  module Resources
    class RouteIDsForAgency
      # Get route IDs for a specific agency
      sig do
        params(
          agency_id: String,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(OpenTransit::Models::RouteIDsForAgencyListResponse)
      end
      def list(
        # ID of the agency
        agency_id,
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
