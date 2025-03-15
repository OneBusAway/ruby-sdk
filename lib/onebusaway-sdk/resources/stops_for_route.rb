# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class StopsForRoute
      # Get stops for a specific route
      #
      # @param route_id [String] ID of the route
      #
      # @param params [OnebusawaySDK::Models::StopsForRouteListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :include_polylines Include polyline elements in the response (default true)
      #
      #   @option params [String] :time Specify service date (YYYY-MM-DD or epoch) (default today)
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::StopsForRouteListResponse]
      def list(route_id, params = {})
        parsed, options = OnebusawaySDK::Models::StopsForRouteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/stops-for-route/%0s.json", route_id],
          query: parsed,
          model: OnebusawaySDK::Models::StopsForRouteListResponse,
          options: options
        )
      end

      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
