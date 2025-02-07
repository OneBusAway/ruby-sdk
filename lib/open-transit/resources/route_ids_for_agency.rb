# frozen_string_literal: true

module OpenTransit
  module Resources
    class RouteIDsForAgency
      # Get route IDs for a specific agency
      #
      # @param agency_id [String] ID of the agency
      #
      # @param params [OpenTransit::Models::RouteIDsForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::RouteIDsForAgencyListResponse]
      #
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/route-ids-for-agency/%0s.json", agency_id],
          model: OpenTransit::Models::RouteIDsForAgencyListResponse,
          options: params[:request_options]
        )
      end

      # @param client [OpenTransit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
