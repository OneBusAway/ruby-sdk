# typed: strong

module OpenTransit
  module Resources
    class RoutesForAgency
      # Retrieve the list of all routes for a particular agency by id
      sig do
        params(
          agency_id: String,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(OpenTransit::Models::RoutesForAgencyListResponse)
      end
      def list(
        # The id of the agency
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
