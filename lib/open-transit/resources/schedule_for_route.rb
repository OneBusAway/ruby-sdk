# frozen_string_literal: true

module OpenTransit
  module Resources
    class ScheduleForRoute
      # Retrieve the full schedule for a route on a particular day
      #
      # @param route_id [String] The route id to request the schedule for
      #
      # @param params [OpenTransit::Models::ScheduleForRouteRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :date The date for which you want to request a schedule in the format YYYY-MM-DD
      #     (optional, defaults to current date)
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::ScheduleForRouteRetrieveResponse]
      #
      def retrieve(route_id, params = {})
        parsed, options = OpenTransit::Models::ScheduleForRouteRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/schedule-for-route/%0s.json", route_id],
          query: parsed,
          model: OpenTransit::Models::ScheduleForRouteRetrieveResponse,
          options: options
        )
      end

      # @param client [OpenTransit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
