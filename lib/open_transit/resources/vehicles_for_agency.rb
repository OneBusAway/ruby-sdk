# frozen_string_literal: true

module OpenTransit
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
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::VehiclesForAgencyListResponse]
      #
      # @see OpenTransit::Models::VehiclesForAgencyListParams
      def list(agency_id, params = {})
        parsed, options = OpenTransit::VehiclesForAgencyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/vehicles-for-agency/%1$s.json", agency_id],
          query: parsed,
          model: OpenTransit::Models::VehiclesForAgencyListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [OpenTransit::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
