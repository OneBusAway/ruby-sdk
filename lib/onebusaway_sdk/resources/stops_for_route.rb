# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class StopsForRoute
      # Get stops for a specific route
      #
      # @overload list(route_id, include_polylines: nil, time: nil, request_options: {})
      #
      # @param route_id [String]
      # @param include_polylines [Boolean]
      # @param time [String]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::StopsForRouteListResponse]
      #
      # @see OnebusawaySDK::Models::StopsForRouteListParams
      def list(route_id, params = {})
        parsed, options = OnebusawaySDK::Models::StopsForRouteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/stops-for-route/%1$s.json", route_id],
          query: parsed,
          model: OnebusawaySDK::Models::StopsForRouteListResponse,
          options: options
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
