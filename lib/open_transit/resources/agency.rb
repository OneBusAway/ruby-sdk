# frozen_string_literal: true

module OpenTransit
  module Resources
    class Agency
      # Retrieve information for a specific transit agency identified by its unique ID.
      #
      # @overload retrieve(agency_id, request_options: {})
      #
      # @param agency_id [String] The ID of the transit agency.
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::AgencyRetrieveResponse]
      #
      # @see OpenTransit::Models::AgencyRetrieveParams
      def retrieve(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/agency/%1$s.json", agency_id],
          model: OpenTransit::Models::AgencyRetrieveResponse,
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
