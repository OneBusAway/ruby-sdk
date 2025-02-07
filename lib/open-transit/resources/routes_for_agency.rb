# frozen_string_literal: true

module OpenTransit
  module Resources
    class RoutesForAgency
      # Retrieve the list of all routes for a particular agency by id
      #
      # @param agency_id [String] The id of the agency
      #
      # @param params [OpenTransit::Models::RoutesForAgencyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::RoutesForAgencyListResponse]
      #
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/routes-for-agency/%0s.json", agency_id],
          model: OpenTransit::Models::RoutesForAgencyListResponse,
          options: params[:request_options]
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
