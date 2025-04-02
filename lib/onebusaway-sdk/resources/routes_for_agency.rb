# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class RoutesForAgency
      # Retrieve the list of all routes for a particular agency by id
      #
      # @param agency_id [String] The id of the agency
      #
      # @param params [OnebusawaySDK::Models::RoutesForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::RoutesForAgencyListResponse]
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/routes-for-agency/%1$s.json", agency_id],
          model: OnebusawaySDK::Models::RoutesForAgencyListResponse,
          options: params[:request_options]
        )
      end

      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
