# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Agency
      # Retrieve information for a specific transit agency identified by its unique ID.
      #
      # @overload retrieve(agency_id, request_options: {})
      #
      # @param agency_id [String]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::AgencyRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::AgencyRetrieveParams
      def retrieve(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/agency/%1$s.json", agency_id],
          model: OnebusawaySDK::Models::AgencyRetrieveResponse,
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
