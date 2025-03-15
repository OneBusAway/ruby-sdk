# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class StopIDsForAgency
      # Get stop IDs for a specific agency
      #
      # @param agency_id [String] ID of the agency
      #
      # @param params [OnebusawaySDK::Models::StopIDsForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::StopIDsForAgencyListResponse]
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stop-ids-for-agency/%0s.json", agency_id],
          model: OnebusawaySDK::Models::StopIDsForAgencyListResponse,
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
