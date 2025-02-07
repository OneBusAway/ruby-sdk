# frozen_string_literal: true

module Onebusaway
  module Resources
    class AgenciesWithCoverage
      # Returns a list of all transit agencies currently supported by OneBusAway along
      #   with the center of their coverage area.
      #
      # @param params [Onebusaway::Models::AgenciesWithCoverageListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::AgenciesWithCoverageListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/where/agencies-with-coverage.json",
          model: Onebusaway::Models::AgenciesWithCoverageListResponse,
          options: params[:request_options]
        )
      end

      # @param client [Onebusaway::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
