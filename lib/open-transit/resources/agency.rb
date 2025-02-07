# frozen_string_literal: true

module OpenTransit
  module Resources
    class Agency
      # Retrieve information for a specific transit agency identified by its unique ID.
      #
      # @param agency_id [String] The ID of the transit agency.
      #
      # @param params [OpenTransit::Models::AgencyRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::AgencyRetrieveResponse]
      #
      def retrieve(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/agency/%0s.json", agency_id],
          model: OpenTransit::Models::AgencyRetrieveResponse,
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
