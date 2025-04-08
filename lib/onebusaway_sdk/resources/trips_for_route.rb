# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripsForRoute
      # Search for active trips for a specific route.
      #
      # @overload list(route_id, include_schedule: nil, include_status: nil, time: nil, request_options: {})
      #
      # @param route_id [String]
      # @param include_schedule [Boolean]
      # @param include_status [Boolean]
      # @param time [Integer]
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
          query: parsed.transform_keys(include_schedule: :includeSchedule, include_status: :includeStatus),
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
