# frozen_string_literal: true

module OpenTransit
  module Resources
    class StopIDsForAgency
      # Get stop IDs for a specific agency
      #
      # @overload list(agency_id, request_options: {})
      #
      # @param agency_id [String] ID of the agency
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::StopIDsForAgencyListResponse]
      #
      # @see OpenTransit::Models::StopIDsForAgencyListParams
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stop-ids-for-agency/%1$s.json", agency_id],
          model: OpenTransit::Models::StopIDsForAgencyListResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [OpenTransit::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
