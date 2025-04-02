# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class StopsForAgency
      # Get stops for a specific agency
      #
      # @overload list(agency_id, request_options: {})
      #
      # @param agency_id [String]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::StopsForAgencyListResponse]
      #
      # @see OnebusawaySDK::Models::StopsForAgencyListParams
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stops-for-agency/%1$s.json", agency_id],
          model: OnebusawaySDK::Models::StopsForAgencyListResponse,
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
