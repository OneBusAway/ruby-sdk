# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class VehiclesForAgency
      # Get vehicles for a specific agency
      #
      # @overload list(agency_id, time: nil, request_options: {})
      #
      # @param agency_id [String] ID of the agency
      #
      # @param time [String] Specific time for querying the status (timestamp format)
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::VehiclesForAgencyListResponse]
      #
      # @see OnebusawaySDK::Models::VehiclesForAgencyListParams
      def list(agency_id, params = {})
        parsed, options = OnebusawaySDK::VehiclesForAgencyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/vehicles-for-agency/%1$s.json", agency_id],
          query: parsed,
          model: OnebusawaySDK::Models::VehiclesForAgencyListResponse,
          options: options
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
