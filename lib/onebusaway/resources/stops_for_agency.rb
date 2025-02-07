# frozen_string_literal: true

module Onebusaway
  module Resources
    class StopsForAgency
      # Get stops for a specific agency
      #
      # @param agency_id [String] ID of the agency
      #
      # @param params [Onebusaway::Models::StopsForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::StopsForAgencyListResponse]
      #
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/stops-for-agency/%0s.json", agency_id],
          model: Onebusaway::Models::StopsForAgencyListResponse,
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
