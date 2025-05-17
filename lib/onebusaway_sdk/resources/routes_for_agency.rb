# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class RoutesForAgency
      # Retrieve the list of all routes for a particular agency by id
      #
      # @overload list(agency_id, request_options: {})
      #
      # @param agency_id [String] The id of the agency
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::RoutesForAgencyListResponse]
      #
      # @see OnebusawaySDK::Models::RoutesForAgencyListParams
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/routes-for-agency/%1$s.json", agency_id],
          model: OnebusawaySDK::Models::RoutesForAgencyListResponse,
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
