# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Route
      # Retrieve information for a specific route identified by its unique ID.
      #
      # @overload retrieve(route_id, request_options: {})
      #
      # @param route_id [String] The ID of the route.
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
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
