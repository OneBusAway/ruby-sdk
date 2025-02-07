# frozen_string_literal: true

module Onebusaway
  module Resources
    class Route
      # Retrieve information for a specific route identified by its unique ID.
      #
      # @param route_id [String] The ID of the route.
      #
      # @param params [Onebusaway::Models::RouteRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::RouteRetrieveResponse]
      #
      def retrieve(route_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/route/%0s.json", route_id],
          model: Onebusaway::Models::RouteRetrieveResponse,
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
