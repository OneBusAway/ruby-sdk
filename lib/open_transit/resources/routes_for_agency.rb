# frozen_string_literal: true

module OpenTransit
  module Resources
    class RoutesForAgency
      # Retrieve the list of all routes for a particular agency by id
      #
      # @overload list(agency_id, request_options: {})
      #
      # @param agency_id [String] The id of the agency
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::RoutesForAgencyListResponse]
      #
      # @see OpenTransit::Models::RoutesForAgencyListParams
      def list(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/routes-for-agency/%1$s.json", agency_id],
          model: OpenTransit::Models::RoutesForAgencyListResponse,
          options: params[:request_options]
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
