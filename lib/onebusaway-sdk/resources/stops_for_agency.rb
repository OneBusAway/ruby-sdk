# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class StopsForAgency
      # Get stops for a specific agency
      #
      # @param agency_id [String] ID of the agency
      #
      # @param params [OnebusawaySDK::Models::StopsForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::StopsForAgencyListResponse]
      #
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stops-for-agency/%0s.json", agency_id],
          model: OnebusawaySDK::Models::StopsForAgencyListResponse,
          options: params[:request_options]
        )
      end

      # @param client [OnebusawaySDK::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
