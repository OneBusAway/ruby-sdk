# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class VehiclesForAgency
      # Get vehicles for a specific agency
      #
      # @param agency_id [String] ID of the agency
      #
      # @param params [OnebusawaySDK::Models::VehiclesForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :time Specific time for querying the status (timestamp format)
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::VehiclesForAgencyListResponse]
      #
      # @see OnebusawaySDK::Models::VehiclesForAgencyListParams
      def list(agency_id, params = {})
        parsed, options = OnebusawaySDK::Models::VehiclesForAgencyListParams.dump_request(params)
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
