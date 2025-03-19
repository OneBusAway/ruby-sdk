# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class AgenciesWithCoverage
      # Returns a list of all transit agencies currently supported by OneBusAway along
      #   with the center of their coverage area.
      #
      # @param params [OnebusawaySDK::Models::AgenciesWithCoverageListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::AgenciesWithCoverageListResponse]
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/where/agencies-with-coverage.json",
          model: OnebusawaySDK::Models::AgenciesWithCoverageListResponse,
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
