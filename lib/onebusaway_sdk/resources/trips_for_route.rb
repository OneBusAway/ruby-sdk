# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripsForRoute
      # Some parameter documentations has been truncated, see
      # {OnebusawaySDK::Models::TripsForRouteListParams} for more details.
      #
      # Search for active trips for a specific route.
      #
      # @overload list(route_id, include_schedule: nil, include_status: nil, time: nil, request_options: {})
      #
      # @param route_id [String] The ID of the route.
      #
      # @param include_schedule [Boolean] Determine whether full schedule elements are included. Defaults to false.
      #
      # @param include_status [Boolean] Determine whether full tripStatus elements with real-time information are includ
      # ...
      #
      # @param time [Integer] Query the system at a specific time. Useful for testing.
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::TripsForRouteListResponse]
      #
      # @see OnebusawaySDK::Models::TripsForRouteListParams
      def list(route_id, params = {})
        parsed, options = OnebusawaySDK::Models::TripsForRouteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/trips-for-route/%1$s.json", route_id],
          query: parsed.transform_keys(include_schedule: "includeSchedule", include_status: "includeStatus"),
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
