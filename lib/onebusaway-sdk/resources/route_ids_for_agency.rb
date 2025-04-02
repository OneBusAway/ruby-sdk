# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class RouteIDsForAgency
      # Get route IDs for a specific agency
      #
      # @param agency_id [String] ID of the agency
      #
      # @param params [OnebusawaySDK::Models::RouteIDsForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::RouteIDsForAgencyListResponse]
      #
      # @see OnebusawaySDK::Models::RouteIDsForAgencyListParams
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/route-ids-for-agency/%1$s.json", agency_id],
          model: OnebusawaySDK::Models::RouteIDsForAgencyListResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
