# frozen_string_literal: true

module OpenTransit
  module Resources
    class Route
      # Retrieve information for a specific route identified by its unique ID.
      #
      # @param route_id [String] The ID of the route.
      #
      # @param params [OpenTransit::Models::RouteRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::RouteRetrieveResponse]
      #
      def retrieve(route_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/route/%0s.json", route_id],
          model: OpenTransit::Models::RouteRetrieveResponse,
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
