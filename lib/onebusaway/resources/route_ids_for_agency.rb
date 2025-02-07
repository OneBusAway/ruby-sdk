# frozen_string_literal: true

module Onebusaway
  module Resources
    class RouteIDsForAgency
      # Get route IDs for a specific agency
      #
      # @param agency_id [String] ID of the agency
      #
      # @param params [Onebusaway::Models::RouteIDsForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::RouteIDsForAgencyListResponse]
      #
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/route-ids-for-agency/%0s.json", agency_id],
          model: Onebusaway::Models::RouteIDsForAgencyListResponse,
          options: params[:request_options]
        )
      end

      # @param client [Onebusaway::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
