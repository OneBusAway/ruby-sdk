# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Route
      # Retrieve information for a specific route identified by its unique ID.
      #
      # @param route_id [String] The ID of the route.
      #
      # @param params [OnebusawaySDK::Models::RouteRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::RouteRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::RouteRetrieveParams
      def retrieve(route_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/route/%1$s.json", route_id],
          model: OnebusawaySDK::Models::RouteRetrieveResponse,
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
