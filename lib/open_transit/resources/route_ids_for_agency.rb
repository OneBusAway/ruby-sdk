# frozen_string_literal: true

module OpenTransit
  module Resources
    class RouteIDsForAgency
      # Get route IDs for a specific agency
      #
      # @overload list(agency_id, request_options: {})
      #
      # @param agency_id [String] ID of the agency
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::RouteIDsForAgencyListResponse]
      #
      # @see OpenTransit::Models::RouteIDsForAgencyListParams
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/route-ids-for-agency/%1$s.json", agency_id],
          model: OpenTransit::Models::RouteIDsForAgencyListResponse,
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
