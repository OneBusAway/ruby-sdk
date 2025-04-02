# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Agency
      # Retrieve information for a specific transit agency identified by its unique ID.
      #
      # @param agency_id [String] The ID of the transit agency.
      #
      # @param params [OnebusawaySDK::Models::AgencyRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::AgencyRetrieveResponse]
      def retrieve(agency_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/agency/%1$s.json", agency_id],
          model: OnebusawaySDK::Models::AgencyRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
