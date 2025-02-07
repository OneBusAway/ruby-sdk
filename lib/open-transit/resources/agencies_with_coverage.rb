# frozen_string_literal: true

module OpenTransit
  module Resources
    class AgenciesWithCoverage
      # Returns a list of all transit agencies currently supported by OneBusAway along
      #   with the center of their coverage area.
      #
      # @param params [OpenTransit::Models::AgenciesWithCoverageListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::AgenciesWithCoverageListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/where/agencies-with-coverage.json",
          model: OpenTransit::Models::AgenciesWithCoverageListResponse,
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
