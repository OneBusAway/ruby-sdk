# frozen_string_literal: true

module OpenTransit
  module Resources
    class TripsForRoute
      # Some parameter documentations has been truncated, see
      # {OpenTransit::Models::TripsForRouteListParams} for more details.
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
      #
      # @param time [Integer] Query the system at a specific time. Useful for testing.
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::TripsForRouteListResponse]
      #
      # @see OpenTransit::Models::TripsForRouteListParams
      def list(route_id, params = {})
        parsed, options = OpenTransit::TripsForRouteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/trips-for-route/%1$s.json", route_id],
          query: parsed.transform_keys(include_schedule: "includeSchedule", include_status: "includeStatus"),
          model: OpenTransit::Models::TripsForRouteListResponse,
          options: options
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
