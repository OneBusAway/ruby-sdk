# frozen_string_literal: true

module OpenTransit
  module Resources
    class Route
      # Retrieve information for a specific route identified by its unique ID.
      #
      # @overload retrieve(route_id, request_options: {})
      #
      # @param route_id [String] The ID of the route.
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::RouteRetrieveResponse]
      #
      # @see OpenTransit::Models::RouteRetrieveParams
      def retrieve(route_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/route/%1$s.json", route_id],
          model: OpenTransit::Models::RouteRetrieveResponse,
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
