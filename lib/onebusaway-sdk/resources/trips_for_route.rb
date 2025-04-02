# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripsForRoute
      # Search for active trips for a specific route.
      #
      # @param route_id [String] The ID of the route.
      #
      # @param params [OnebusawaySDK::Models::TripsForRouteListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :include_schedule Determine whether full schedule elements are included. Defaults to false.
      #
      #   @option params [Boolean] :include_status Determine whether full tripStatus elements with real-time information are
      #     included. Defaults to false.
      #
      #   @option params [Integer] :time Query the system at a specific time. Useful for testing.
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::TripsForRouteListResponse]
      #
      # @see OnebusawaySDK::Models::TripsForRouteListParams
      def list(route_id, params = {})
        parsed, options = OnebusawaySDK::Models::TripsForRouteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/trips-for-route/%1$s.json", route_id],
          query: parsed,
          model: OnebusawaySDK::Models::TripsForRouteListResponse,
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
