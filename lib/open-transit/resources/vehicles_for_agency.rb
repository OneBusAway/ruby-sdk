# frozen_string_literal: true

module OpenTransit
  module Resources
    class VehiclesForAgency
      # Get vehicles for a specific agency
      #
      # @param agency_id [String] ID of the agency
      #
      # @param params [OpenTransit::Models::VehiclesForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :time Specific time for querying the status (timestamp format)
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::VehiclesForAgencyListResponse]
      #
      def list(agency_id, params = {})
        parsed, options = OpenTransit::Models::VehiclesForAgencyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/vehicles-for-agency/%0s.json", agency_id],
          query: parsed,
          model: OpenTransit::Models::VehiclesForAgencyListResponse,
          options: options
        )
      end

      # @param client [OpenTransit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
