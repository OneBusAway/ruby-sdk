# frozen_string_literal: true

module OpenTransit
  module Resources
    class AgenciesWithCoverage
      # Returns a list of all transit agencies currently supported by OneBusAway along
      # with the center of their coverage area.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::AgenciesWithCoverageListResponse]
      #
      # @see OpenTransit::Models::AgenciesWithCoverageListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/where/agencies-with-coverage.json",
          model: OpenTransit::Models::AgenciesWithCoverageListResponse,
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
